// Mocks generated by Mockito 5.4.4 from annotations
// in driven_layout/test/template/language/templates/capture_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:driven_layout/src/template/language/templates/capture.dart'
    as _i3;
import 'package:driven_layout/src/template/language/templates/template.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTemplate_0 extends _i1.SmartFake implements _i2.Template {
  _FakeTemplate_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Capture].
///
/// See the documentation for Mockito's code generation for more information.
class MockCapture extends _i1.Mock implements _i3.Capture {
  @override
  _i2.Template get ref => (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeTemplate_0(
          this,
          Invocation.getter(#ref),
        ),
        returnValueForMissingStub: _FakeTemplate_0(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i2.Template);

  @override
  set ref(_i2.Template? newValue) => super.noSuchMethod(
        Invocation.setter(
          #ref,
          newValue,
        ),
        returnValueForMissingStub: null,
      );
}
