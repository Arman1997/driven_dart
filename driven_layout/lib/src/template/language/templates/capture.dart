import 'template.dart' show Template;

final class Capture extends Template {
  Template? _ref;

  Template get ref => _ref ?? (throw UnimplementedError());

  set ref(Template newValue) {
    _ref = newValue;
  }
}