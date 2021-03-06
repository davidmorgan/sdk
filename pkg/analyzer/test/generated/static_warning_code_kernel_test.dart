// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test_reflective_loader/test_reflective_loader.dart';

import 'static_warning_code_driver_test.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(StaticWarningCodeTest_Kernel);
  });
}

const potentialAnalyzerProblem = const Object();

/// Tests marked with this annotation fail because of an Analyzer problem.
class AnalyzerProblem {
  const AnalyzerProblem(String issueUri);
}

/// Tests marked with this annotation fail because of a Fasta problem.
class FastaProblem {
  const FastaProblem(String issueUri);
}

@reflectiveTest
class StaticWarningCodeTest_Kernel extends StaticWarningCodeTest_Driver {
  @override
  bool get enableKernelDriver => true;

  @override
  bool get useCFE => true;

  @override
  bool get usingFastaParser => true;

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_as() async {
    return super.test_ambiguousImport_as();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_extends() async {
    return super.test_ambiguousImport_extends();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_implements() async {
    return super.test_ambiguousImport_implements();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_inPart() async {
    return super.test_ambiguousImport_inPart();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_instanceCreation() async {
    return super.test_ambiguousImport_instanceCreation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_is() async {
    return super.test_ambiguousImport_is();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_qualifier() async {
    return super.test_ambiguousImport_qualifier();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_typeAnnotation() async {
    return super.test_ambiguousImport_typeAnnotation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_typeArgument_annotation() async {
    return super.test_ambiguousImport_typeArgument_annotation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_typeArgument_instanceCreation() async {
    return super.test_ambiguousImport_typeArgument_instanceCreation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_varRead() async {
    return super.test_ambiguousImport_varRead();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_varWrite() async {
    return super.test_ambiguousImport_varWrite();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_ambiguousImport_withPrefix() async {
    return super.test_ambiguousImport_withPrefix();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_argumentTypeNotAssignable_const() async {
    return super.test_argumentTypeNotAssignable_const();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_argumentTypeNotAssignable_const_super() async {
    return super.test_argumentTypeNotAssignable_const_super();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToClass() async {
    return super.test_assignmentToClass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToConst_instanceVariable() async {
    return super.test_assignmentToConst_instanceVariable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToConst_instanceVariable_plusEq() async {
    return super.test_assignmentToConst_instanceVariable_plusEq();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToConst_localVariable() async {
    return super.test_assignmentToConst_localVariable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToConst_localVariable_plusEq() async {
    return super.test_assignmentToConst_localVariable_plusEq();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToEnumType() async {
    return super.test_assignmentToEnumType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinal_instanceVariable() async {
    return super.test_assignmentToFinal_instanceVariable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinal_instanceVariable_plusEq() async {
    return super.test_assignmentToFinal_instanceVariable_plusEq();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_localVariable() async {
    return super.test_assignmentToFinalLocal_localVariable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_localVariable_plusEq() async {
    return super.test_assignmentToFinalLocal_localVariable_plusEq();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_parameter() async {
    return super.test_assignmentToFinalLocal_parameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_postfixMinusMinus() async {
    return super.test_assignmentToFinalLocal_postfixMinusMinus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_postfixPlusPlus() async {
    return super.test_assignmentToFinalLocal_postfixPlusPlus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_prefixMinusMinus() async {
    return super.test_assignmentToFinalLocal_prefixMinusMinus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_prefixPlusPlus() async {
    return super.test_assignmentToFinalLocal_prefixPlusPlus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_suffixMinusMinus() async {
    return super.test_assignmentToFinalLocal_suffixMinusMinus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_suffixPlusPlus() async {
    return super.test_assignmentToFinalLocal_suffixPlusPlus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalLocal_topLevelVariable() async {
    return super.test_assignmentToFinalLocal_topLevelVariable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalNoSetter_prefixedIdentifier() async {
    return super.test_assignmentToFinalNoSetter_prefixedIdentifier();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFinalNoSetter_propertyAccess() async {
    return super.test_assignmentToFinalNoSetter_propertyAccess();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToFunction() async {
    return super.test_assignmentToFunction();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToMethod() async {
    return super.test_assignmentToMethod();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToTypedef() async {
    return super.test_assignmentToTypedef();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_assignmentToTypeParameter() async {
    return super.test_assignmentToTypeParameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_castToNonType() async {
    return super.test_castToNonType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingDartImport() async {
    return super.test_conflictingDartImport();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_declField_direct_setter() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_declField_direct_setter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_declGetter_direct_getter() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_declGetter_direct_getter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_declGetter_direct_method() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_declGetter_direct_method();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_declGetter_direct_setter() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_declGetter_direct_setter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_declGetter_indirect() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_declGetter_indirect();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_declGetter_mixin() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_declGetter_mixin();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceGetterAndSuperclassMember_direct_field() async {
    return super
        .test_conflictingInstanceGetterAndSuperclassMember_direct_field();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceMethodSetter2() async {
    return super.test_conflictingInstanceMethodSetter2();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceMethodSetter_sameClass() async {
    return super.test_conflictingInstanceMethodSetter_sameClass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceMethodSetter_setterInInterface() async {
    return super.test_conflictingInstanceMethodSetter_setterInInterface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceMethodSetter_setterInSuper() async {
    return super.test_conflictingInstanceMethodSetter_setterInSuper();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingInstanceSetterAndSuperclassMember() async {
    return super.test_conflictingInstanceSetterAndSuperclassMember();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingStaticGetterAndInstanceSetter_mixin() async {
    return super.test_conflictingStaticGetterAndInstanceSetter_mixin();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingStaticGetterAndInstanceSetter_superClass() async {
    return super.test_conflictingStaticGetterAndInstanceSetter_superClass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingStaticGetterAndInstanceSetter_thisClass() async {
    return super.test_conflictingStaticGetterAndInstanceSetter_thisClass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingStaticSetterAndInstanceMember_thisClass_getter() async {
    return super
        .test_conflictingStaticSetterAndInstanceMember_thisClass_getter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_conflictingStaticSetterAndInstanceMember_thisClass_method() async {
    return super
        .test_conflictingStaticSetterAndInstanceMember_thisClass_method();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_constWithAbstractClass() async {
    return super.test_constWithAbstractClass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_constWithAbstractClass_generic() async {
    return super.test_constWithAbstractClass_generic();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_equalKeysInMap() async {
    return super.test_equalKeysInMap();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_equalKeysInMap_withEqualTypeParams() async {
    return super.test_equalKeysInMap_withEqualTypeParams();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_exportDuplicatedLibraryNamed() async {
    return super.test_exportDuplicatedLibraryNamed();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_extraPositionalArguments() async {
    return super.test_extraPositionalArguments();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_extraPositionalArguments_functionExpression() async {
    return super.test_extraPositionalArguments_functionExpression();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_extraPositionalArgumentsCouldBeNamed() async {
    return super.test_extraPositionalArgumentsCouldBeNamed();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_extraPositionalArgumentsCouldBeNamed_functionExpression() async {
    return super.test_extraPositionalArgumentsCouldBeNamed_functionExpression();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_fieldInitializerNotAssignable() async {
    return super.test_fieldInitializerNotAssignable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_fieldInitializingFormalNotAssignable() async {
    return super.test_fieldInitializingFormalNotAssignable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_finalInitializedInDeclarationAndConstructor_initializers() async {
    return super
        .test_finalInitializedInDeclarationAndConstructor_initializers();
  }

  @override
  @failingTest
  @FastaProblem('https://github.com/dart-lang/sdk/issues/31073')
  test_finalNotInitialized_inConstructor_1() async {
    return super.test_finalNotInitialized_inConstructor_1();
  }

  @override
  @failingTest
  @FastaProblem('https://github.com/dart-lang/sdk/issues/31073')
  test_finalNotInitialized_inConstructor_2() async {
    return super.test_finalNotInitialized_inConstructor_2();
  }

  @override
  @failingTest
  @FastaProblem('https://github.com/dart-lang/sdk/issues/31073')
  test_finalNotInitialized_inConstructor_3() async {
    return super.test_finalNotInitialized_inConstructor_3();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_finalNotInitialized_instanceField_final() async {
    return super.test_finalNotInitialized_instanceField_final();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_finalNotInitialized_instanceField_final_static() async {
    return super.test_finalNotInitialized_instanceField_final_static();
  }

  @override
  @failingTest
  test_generalizedVoid_invocationOfVoidFieldError() async {
    return super.test_generalizedVoid_invocationOfVoidFieldError();
  }

  @override
  @failingTest
  test_generalizedVoid_invocationOfVoidLocalError() async {
    return super.test_generalizedVoid_invocationOfVoidLocalError();
  }

  @override
  @failingTest
  test_generalizedVoid_invocationOfVoidResultError() async {
    return super.test_generalizedVoid_invocationOfVoidResultError();
  }

  @override
  @failingTest
  test_generalizedVoid_invocationOfVoidToplevelError() async {
    return super.test_generalizedVoid_invocationOfVoidToplevelError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidByIndexingError() async {
    return super.test_generalizedVoid_useOfVoidByIndexingError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidCallSetterError() async {
    return super.test_generalizedVoid_useOfVoidCallSetterError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidCascadeError() async {
    return super.test_generalizedVoid_useOfVoidCascadeError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidInConditionalLhsError() async {
    return super.test_generalizedVoid_useOfVoidInConditionalLhsError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidInConditionalRhsError() async {
    return super.test_generalizedVoid_useOfVoidInConditionalRhsError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidInForeachVariableError() async {
    return super.test_generalizedVoid_useOfVoidInForeachVariableError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidInSpecialAssignmentError() async {
    return super.test_generalizedVoid_useOfVoidInSpecialAssignmentError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidNullPropertyAccessError() async {
    return super.test_generalizedVoid_useOfVoidNullPropertyAccessError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidPropertyAccessError() async {
    return super.test_generalizedVoid_useOfVoidPropertyAccessError();
  }

  @override
  @failingTest
  test_generalizedVoid_useOfVoidReturnInNonVoidFunctionError() async {
    return super.test_generalizedVoid_useOfVoidReturnInNonVoidFunctionError();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_importDuplicatedLibraryNamed() async {
    return super.test_importDuplicatedLibraryNamed();
  }

  @override
  @failingTest
  @FastaProblem('https://github.com/dart-lang/sdk/issues/30959')
  test_importOfNonLibrary() async {
    return super.test_importOfNonLibrary();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_inconsistentMethodInheritanceGetterAndMethod() async {
    return super.test_inconsistentMethodInheritanceGetterAndMethod();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidGetterOverrideReturnType_implicit() async {
    return super.test_invalidGetterOverrideReturnType_implicit();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidGetterOverrideReturnType_twoInterfaces() async {
    return super.test_invalidGetterOverrideReturnType_twoInterfaces();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidGetterOverrideReturnType_twoInterfaces_conflicting() async {
    return super
        .test_invalidGetterOverrideReturnType_twoInterfaces_conflicting();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidMethodOverrideNormalParamType_twoInterfaces_conflicting() async {
    return super
        .test_invalidMethodOverrideNormalParamType_twoInterfaces_conflicting();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidMethodOverrideReturnType_twoInterfaces() async {
    return super.test_invalidMethodOverrideReturnType_twoInterfaces();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidOverrideNamed_fewerNamedParameters() async {
    return super.test_invalidOverrideNamed_fewerNamedParameters();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidOverrideNamed_missingNamedParameter() async {
    return super.test_invalidOverrideNamed_missingNamedParameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidOverridePositional_optional() async {
    return super.test_invalidOverridePositional_optional();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidOverridePositional_optionalAndRequired() async {
    return super.test_invalidOverridePositional_optionalAndRequired();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidOverridePositional_optionalAndRequired2() async {
    return super.test_invalidOverridePositional_optionalAndRequired2();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidOverrideRequired() async {
    return super.test_invalidOverrideRequired();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidSetterOverrideNormalParamType_superclass_interface() async {
    return super
        .test_invalidSetterOverrideNormalParamType_superclass_interface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_invalidSetterOverrideNormalParamType_twoInterfaces_conflicting() async {
    return super
        .test_invalidSetterOverrideNormalParamType_twoInterfaces_conflicting();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_listElementTypeNotAssignable() async {
    return super.test_listElementTypeNotAssignable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mapKeyTypeNotAssignable() async {
    return super.test_mapKeyTypeNotAssignable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mapValueTypeNotAssignable() async {
    return super.test_mapValueTypeNotAssignable();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mismatchedAccessorTypes_class() async {
    return super.test_mismatchedAccessorTypes_class();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mismatchedAccessorTypes_getterAndSuperSetter() async {
    return super.test_mismatchedAccessorTypes_getterAndSuperSetter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mismatchedAccessorTypes_setterAndSuperGetter() async {
    return super.test_mismatchedAccessorTypes_setterAndSuperGetter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mismatchedAccessorTypes_topLevel() async {
    return super.test_mismatchedAccessorTypes_topLevel();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_missingEnumConstantInSwitch() async {
    return super.test_missingEnumConstantInSwitch();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mixedReturnTypes_localFunction() async {
    return super.test_mixedReturnTypes_localFunction();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mixedReturnTypes_method() async {
    return super.test_mixedReturnTypes_method();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_mixedReturnTypes_topLevelFunction() async {
    return super.test_mixedReturnTypes_topLevelFunction();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithInvalidTypeParameters() async {
    return super.test_newWithInvalidTypeParameters();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithInvalidTypeParameters_tooFew() async {
    return super.test_newWithInvalidTypeParameters_tooFew();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithInvalidTypeParameters_tooMany() async {
    return super.test_newWithInvalidTypeParameters_tooMany();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithNonType() async {
    return super.test_newWithNonType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithNonType_fromLibrary() async {
    return super.test_newWithNonType_fromLibrary();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithUndefinedConstructor() async {
    return super.test_newWithUndefinedConstructor();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_newWithUndefinedConstructorDefault() async {
    return super.test_newWithUndefinedConstructorDefault();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberFivePlus() async {
    return super.test_nonAbstractClassInheritsAbstractMemberFivePlus();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberFour() async {
    return super.test_nonAbstractClassInheritsAbstractMemberFour();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_classTypeAlias_interface() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_classTypeAlias_interface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_classTypeAlias_mixin() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_classTypeAlias_mixin();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_classTypeAlias_superclass() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_classTypeAlias_superclass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_ensureCorrectFunctionSubtypeIsUsedInImplementation() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_ensureCorrectFunctionSubtypeIsUsedInImplementation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_getter_fromInterface() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_getter_fromInterface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_getter_fromSuperclass() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_getter_fromSuperclass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_method_fromInterface() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_method_fromInterface();
  }

  @override
  @failingTest
  @FastaProblem('https://github.com/dart-lang/sdk/issues/31791')
  test_nonAbstractClassInheritsAbstractMemberOne_method_fromInterface_abstractNSM() =>
      super
          .test_nonAbstractClassInheritsAbstractMemberOne_method_fromInterface_abstractNSM();

  @override
  @failingTest
  @FastaProblem('https://github.com/dart-lang/sdk/issues/31791')
  test_nonAbstractClassInheritsAbstractMemberOne_method_fromInterface_ifcNSM() =>
      super
          .test_nonAbstractClassInheritsAbstractMemberOne_method_fromInterface_ifcNSM();

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_method_fromSuperclass() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_method_fromSuperclass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_method_optionalParamCount() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_method_optionalParamCount();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_mixinInherits_getter() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_mixinInherits_getter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_mixinInherits_method() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_mixinInherits_method();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_mixinInherits_setter() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_mixinInherits_setter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_noSuchMethod_interface() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_noSuchMethod_interface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_setter_and_implicitSetter() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_setter_and_implicitSetter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_setter_fromInterface() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_setter_fromInterface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_setter_fromSuperclass() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_setter_fromSuperclass();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_superclasses_interface() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_superclasses_interface();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_variable_fromInterface_missingGetter() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_variable_fromInterface_missingGetter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberOne_variable_fromInterface_missingSetter() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberOne_variable_fromInterface_missingSetter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberThree() async {
    return super.test_nonAbstractClassInheritsAbstractMemberThree();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberTwo() async {
    return super.test_nonAbstractClassInheritsAbstractMemberTwo();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberTwo_variable_fromInterface_missingBoth() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberTwo_variable_fromInterface_missingBoth();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonAbstractClassInheritsAbstractMemberTwo_variable_fromMixin_missingBoth() async {
    return super
        .test_nonAbstractClassInheritsAbstractMemberTwo_variable_fromMixin_missingBoth();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonTypeInCatchClause_noElement() async {
    return super.test_nonTypeInCatchClause_noElement();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonTypeInCatchClause_notType() async {
    return super.test_nonTypeInCatchClause_notType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonVoidReturnForOperator() async {
    return super.test_nonVoidReturnForOperator();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonVoidReturnForSetter_function() async {
    return super.test_nonVoidReturnForSetter_function();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_nonVoidReturnForSetter_method() async {
    return super.test_nonVoidReturnForSetter_method();
  }

  @override
  @failingTest
  test_notAType() {
    // Bad state: No data for f at 18 in /test.dart
    return super.test_notAType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_notEnoughRequiredArguments() async {
    return super.test_notEnoughRequiredArguments();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_notEnoughRequiredArguments_functionExpression() async {
    return super.test_notEnoughRequiredArguments_functionExpression();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_notEnoughRequiredArguments_getterReturningFunction() async {
    return super.test_notEnoughRequiredArguments_getterReturningFunction();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_redirectToInvalidFunctionType() async {
    return super.test_redirectToInvalidFunctionType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_redirectToInvalidReturnType() async {
    return super.test_redirectToInvalidReturnType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_redirectToMissingConstructor_named() async {
    return super.test_redirectToMissingConstructor_named();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_redirectToMissingConstructor_unnamed() async {
    return super.test_redirectToMissingConstructor_unnamed();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_redirectToNonClass_notAType() async {
    return super.test_redirectToNonClass_notAType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_redirectToNonClass_undefinedIdentifier() async {
    return super.test_redirectToNonClass_undefinedIdentifier();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_returnWithoutValue_async() async {
    return super.test_returnWithoutValue_async();
  }

  @override
  @failingTest
  test_returnWithoutValue_async_future_object_with_return() {
    // Expected 1 errors of type StaticWarningCode.RETURN_WITHOUT_VALUE, found 0
    return super.test_returnWithoutValue_async_future_object_with_return();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_returnWithoutValue_factoryConstructor() async {
    return super.test_returnWithoutValue_factoryConstructor();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_returnWithoutValue_function() async {
    return super.test_returnWithoutValue_function();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_returnWithoutValue_method() async {
    return super.test_returnWithoutValue_method();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_returnWithoutValue_mixedReturnTypes_function() async {
    return super.test_returnWithoutValue_mixedReturnTypes_function();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_staticAccessToInstanceMember_method_invocation() async {
    return super.test_staticAccessToInstanceMember_method_invocation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_staticAccessToInstanceMember_method_reference() async {
    return super.test_staticAccessToInstanceMember_method_reference();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_staticAccessToInstanceMember_propertyAccess_field() async {
    return super.test_staticAccessToInstanceMember_propertyAccess_field();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_staticAccessToInstanceMember_propertyAccess_getter() async {
    return super.test_staticAccessToInstanceMember_propertyAccess_getter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_staticAccessToInstanceMember_propertyAccess_setter() async {
    return super.test_staticAccessToInstanceMember_propertyAccess_setter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_switchExpressionNotAssignable() async {
    return super.test_switchExpressionNotAssignable();
  }

  @override
  @failingTest
  test_typeAnnotationDeferredClass_asExpression() {
    // Bad state: No data for A at 68 in /lib2.dart
    return super.test_typeAnnotationDeferredClass_asExpression();
  }

  @override
  @failingTest
  test_typeAnnotationDeferredClass_catchClause() {
    // Bad state: No data for A at 76 in /lib2.dart
    return super.test_typeAnnotationDeferredClass_catchClause();
  }

  @override
  @failingTest
  test_typeAnnotationDeferredClass_fieldFormalParameter() {
    // Bad state: No data for A at 73 in /lib2.dart
    return super.test_typeAnnotationDeferredClass_fieldFormalParameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeAnnotationDeferredClass_functionDeclaration_returnType() async {
    return super
        .test_typeAnnotationDeferredClass_functionDeclaration_returnType();
  }

  @override
  @failingTest
  test_typeAnnotationDeferredClass_functionTypedFormalParameter_returnType() {
    // Bad state: No data for A at 52 in /lib2.dart
    return super
        .test_typeAnnotationDeferredClass_functionTypedFormalParameter_returnType();
  }

  @override
  @failingTest
  test_typeAnnotationDeferredClass_isExpression() {
    // Bad state: No data for A at 77 in /lib2.dart
    return super.test_typeAnnotationDeferredClass_isExpression();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeAnnotationDeferredClass_methodDeclaration_returnType() async {
    return super
        .test_typeAnnotationDeferredClass_methodDeclaration_returnType();
  }

  @override
  @failingTest
  test_typeAnnotationDeferredClass_simpleFormalParameter() {
    // Bad state: No data for A at 52 in /lib2.dart
    return super.test_typeAnnotationDeferredClass_simpleFormalParameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeAnnotationDeferredClass_typeParameter_bound() async {
    return super.test_typeAnnotationDeferredClass_typeParameter_bound();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeParameterReferencedByStatic_methodParameter() async {
    return super.test_typeParameterReferencedByStatic_methodParameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeParameterReferencedByStatic_setter() async {
    return super.test_typeParameterReferencedByStatic_setter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeTestNonType() async {
    return super.test_typeTestNonType();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_typeTestWithUndefinedName() async {
    return super.test_typeTestWithUndefinedName();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedClass_instanceCreation() async {
    return super.test_undefinedClass_instanceCreation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedClass_variableDeclaration() async {
    return super.test_undefinedClass_variableDeclaration();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedClassBoolean_variableDeclaration() async {
    return super.test_undefinedClassBoolean_variableDeclaration();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedGetter_fromLibrary() async {
    return super.test_undefinedGetter_fromLibrary();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_for() async {
    return super.test_undefinedIdentifier_for();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_function() async {
    return super.test_undefinedIdentifier_function();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_importCore_withShow() async {
    return super.test_undefinedIdentifier_importCore_withShow();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_initializer() async {
    return super.test_undefinedIdentifier_initializer();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_methodInvocation() async {
    return super.test_undefinedIdentifier_methodInvocation();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_private_getter() async {
    return super.test_undefinedIdentifier_private_getter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifier_private_setter() async {
    return super.test_undefinedIdentifier_private_setter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedIdentifierAwait_function() async {
    return super.test_undefinedIdentifierAwait_function();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedNamedParameter() async {
    return super.test_undefinedNamedParameter();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_undefinedSetter() async {
    return super.test_undefinedSetter();
  }

  @failingTest
  @override
  test_useOfVoidResult_assignmentExpression_function() async {
    return super.test_useOfVoidResult_assignmentExpression_function();
  }

  @failingTest
  @override
  test_useOfVoidResult_assignmentExpression_method() async {
    return super.test_useOfVoidResult_assignmentExpression_method();
  }

  @override
  test_useOfVoidResult_inForLoop_ok() async {
    return super.test_useOfVoidResult_inForLoop_ok();
  }

  @override
  test_useOfVoidResult_variableDeclaration_method_ok() async {
    return super.test_useOfVoidResult_variableDeclaration_method_ok();
  }
}
