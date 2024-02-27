import 'package:driven_layout/src/template/dispatcher/dispatcher.dart'
    show Dispatcher;
import 'package:driven_layout/src/template/errors/errors.dart'
    show CaptureNullRefError;
import 'package:driven_layout/src/template/language/ast_entities/ast_entities.dart'
    show AstEntity;
import 'package:driven_layout/src/template/language/templates/templates.dart';

import 'template.dart' show Template;

/// Capture of [Template]
///
/// Captures reference of [AstEntity] as [Template] in parallel tree, which is in same iteration step of [Dispatcher].
///
///  ```dart
/// final exampleNode = Node(
///   ClassDeclaration,
///   [
///     Capture(),
///   ],
/// );
/// ```
class Capture extends Template {
  Template? _ref;

  Template get ref => _ref ?? (throw CaptureNullRefError());

  set ref(Template newValue) {
    _ref = newValue;
  }

  Capture();
}