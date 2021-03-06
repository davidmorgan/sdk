// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:args/args.dart';
import 'package:async_helper/async_helper.dart';
import 'package:compiler/src/commandline_options.dart';

import '../helpers/d8_helper.dart';
import 'package:expect/expect.dart';

void main(List<String> args) {
  ArgParser argParser = new ArgParser(allowTrailingOptions: true);
  argParser.addFlag('continued', abbr: 'c', defaultsTo: false);
  ArgResults argResults = argParser.parse(args);
  Directory dataDir =
      new Directory.fromUri(Platform.script.resolve('minified'));
  print('Input folder: ${dataDir.uri}');
  asyncTest(() async {
    bool continuing = false;
    await for (FileSystemEntity entity in dataDir.list()) {
      String name = entity.uri.pathSegments.last;
      if (!name.endsWith('.dart')) continue;
      if (argResults.rest.isNotEmpty &&
          !argResults.rest.contains(name) &&
          !continuing) {
        continue;
      }
      print('\ninput $name');
      await runTest(await new File.fromUri(entity.uri).readAsString());
      if (argResults['continued']) continuing = true;
    }
  });
}

// Object to hold the expectations of a individual minified-name test.
class MinifiedNameTest {
  /// Pattern used to find a minified name in the error message.
  final RegExp pattern;

  /// The kind of minified name, it can be global, instance, or other
  /// (the first two correspond to the two namespaces that contain extra data in
  /// the source-map file).
  final String _kind;

  /// Whether the minified name is from the global namespace.
  bool get isGlobal => _kind == 'global';

  /// Whether the minified name is from the instance namespace.
  bool get isInstance => _kind == 'instance';

  /// The deobfuscated name we expect to find.
  final String expectedName;

  /// The actual test code.
  final String code;

  MinifiedNameTest(this.pattern, this._kind, this.expectedName, this.code);
}

RegExp _patternMatcher = new RegExp("// Error pattern: (.*)\n");
RegExp _kindMatcher = new RegExp("// Kind of minified name: (.*)\n");
RegExp _nameMatcher = new RegExp("// Expected deobfuscated name: (.*)\n");

Future runTest(String code) async {
  var patternMatch = _patternMatcher.firstMatch(code);
  Expect.isNotNull(patternMatch, "Could not find the error pattern.");
  var pattern = new RegExp(patternMatch.group(1));
  var kindMatch = _kindMatcher.firstMatch(code);
  Expect.isNotNull(kindMatch, "Could not find the expected minified kind.");
  var kind = kindMatch.group(1);

  // TODO(sigmund): add support for "other" when we encode symbol information
  // directly for each field and local variable.
  const validKinds = const ['global', 'instance'];
  Expect.isTrue(validKinds.contains(kind),
      "Invalid kind: $kind, please use one of $validKinds");

  var nameMatch = _nameMatcher.firstMatch(code);
  Expect.isNotNull(nameMatch, "Could not find the expected deobfuscated name.");
  var expectedName = nameMatch.group(1);
  var test = new MinifiedNameTest(pattern, kind, expectedName, code);
  print('expectations: ${pattern.pattern} $kind $expectedName');
  await checkExpectation(test, false);
  await checkExpectation(test, true);
}

checkExpectation(MinifiedNameTest test, bool minified) async {
  print('-- ${minified ? 'minified' : 'not-minified'}:');
  D8Result result = await runWithD8(
      memorySourceFiles: {'main.dart': test.code},
      options: minified ? [Flags.minify] : []);
  String stdout = result.runResult.stdout;
  String error = _extractError(stdout);
  print('   error: $error');
  Expect.isNotNull(error, 'Couldn\'t find the error message in $stdout');

  var match = test.pattern.firstMatch(error);
  Expect.isNotNull(
      match,
      'Error didn\'t match the test pattern'
      '\nerror: $error\npattern:${test.pattern}');
  var name = match.group(1);
  print('   obfuscated-name: $name');
  Expect.isNotNull(name, 'Error didn\'t contain a name\nerror: $error');

  var sourceMap = '${result.outputPath}.map';
  var json = jsonDecode(await new File(sourceMap).readAsString());

  var extensions = json['x_org_dartlang_dart2js'];
  Expect.isNotNull(extensions, "Source-map doesn't contain dart2js extensions");
  var minifiedNames = extensions['minified_names'];
  Expect.isNotNull(minifiedNames, "Source-map doesn't contain minified-names");

  var actualName;
  if (test.isGlobal) {
    actualName = json['names'][minifiedNames['global'][name]];
  } else if (test.isInstance) {
    actualName = json['names'][minifiedNames['instance'][name]];
  } else {
    Expect.fail('unexpected');
  }
  print('   actual-name: $actualName');
  Expect.equals(test.expectedName, actualName);
  print('   PASS!!');
}

String _extractError(String stdout) {
  var firstStackFrame = stdout.indexOf('\n    at');
  if (firstStackFrame == -1) return null;
  var prevLine = stdout.lastIndexOf('\n', firstStackFrame - 1);
  if (prevLine == -1) return null;
  return stdout.substring(prevLine + 1, firstStackFrame);
}
