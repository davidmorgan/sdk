// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analysis_server/protocol/protocol_generated.dart';
import 'package:analyzer_plugin/protocol/protocol_common.dart';
import 'package:test/test.dart';
import 'package:test_reflective_loader/test_reflective_loader.dart';

import '../support/integration_tests.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(GetSuggestionsTest);
    defineReflectiveTests(GetSuggestionsTest_UseCFE);
  });
}

@reflectiveTest
class GetSuggestionsTest extends AbstractAnalysisServerIntegrationTest {
  String path;
  String content;
  int completionOffset;

  void setTestSource(String relPath, String content) {
    path = sourcePath(relPath);
    expect(completionOffset, isNull, reason: 'Call addTestUnit exactly once');
    completionOffset = content.indexOf('^');
    expect(completionOffset, isNot(equals(-1)), reason: 'missing ^');
    int nextOffset = content.indexOf('^', completionOffset + 1);
    expect(nextOffset, equals(-1), reason: 'too many ^');
    this.content = content.substring(0, completionOffset) +
        content.substring(completionOffset + 1);
  }

  test_getSuggestions() async {
    setTestSource('test.dart', r'''
String test = '';
main() {
  test.^
}
''');
    writeFile(path, content);
    await standardAnalysisSetup();
    await analysisFinished;
    CompletionGetSuggestionsResult result =
        await sendCompletionGetSuggestions(path, completionOffset);
    String completionId = result.id;
    CompletionResultsParams param = await onCompletionResults.firstWhere(
        (CompletionResultsParams param) =>
            param.id == completionId && param.isLast);
    expect(param.replacementOffset, completionOffset);
    expect(param.replacementLength, 0);
    param.results.firstWhere(
        (CompletionSuggestion suggestion) => suggestion.completion == 'length');
  }

  test_getSuggestions_onlyOverlay() async {
    setTestSource('test.dart', r'''
String test = '';
main() {
  test.^
}
''');
    // Create an overlay but do not write the file to "disk"
    //   writeFile(pathname, text);
    await standardAnalysisSetup();
    await sendAnalysisUpdateContent({path: new AddContentOverlay(content)});
    await analysisFinished;
    CompletionGetSuggestionsResult result =
        await sendCompletionGetSuggestions(path, completionOffset);
    String completionId = result.id;
    CompletionResultsParams param = await onCompletionResults.firstWhere(
        (CompletionResultsParams param) =>
            param.id == completionId && param.isLast);
    expect(param.replacementOffset, completionOffset);
    expect(param.replacementLength, 0);
    param.results.firstWhere(
        (CompletionSuggestion suggestion) => suggestion.completion == 'length');
  }

  test_getSuggestions_onlyOverlay_noWait() async {
    setTestSource('test.dart', r'''
String test = '';
main() {
  test.^
}
''');
    // Create an overlay but do not write the file to "disk"
    //   writeFile(pathname, text);
    // Don't wait for any results except the completion notifications
    standardAnalysisSetup(subscribeStatus: false);
    sendAnalysisUpdateContent({path: new AddContentOverlay(content)});
    sendCompletionGetSuggestions(path, completionOffset);
    CompletionResultsParams param = await onCompletionResults
        .firstWhere((CompletionResultsParams param) => param.isLast);
    expect(param.replacementOffset, completionOffset);
    expect(param.replacementLength, 0);
    param.results.firstWhere(
        (CompletionSuggestion suggestion) => suggestion.completion == 'length');
  }

  test_getSuggestions_sourceMissing_noWait() {
    path = sourcePath('does_not_exist.dart');
    // Do not write the file to "disk"
    //   writeFile(pathname, text);
    // Don't wait for any results except the completion notifications
    standardAnalysisSetup(subscribeStatus: false);
    // Missing file and no overlay
    //sendAnalysisUpdateContent({path: new AddContentOverlay(content)});
    return sendCompletionGetSuggestions(path, 0).catchError((e) {
      // Exception expected
      return null;
    }).then((result) {
      expect(result, const TypeMatcher<CompletionGetSuggestionsResult>());
    });
  }
}

@reflectiveTest
class GetSuggestionsTest_UseCFE extends GetSuggestionsTest {
  @override
  bool get useCFE => true;
}
