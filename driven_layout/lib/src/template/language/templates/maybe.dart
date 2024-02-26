import 'template.dart' show Template;

class Maybe extends Template {
  final List<Template> patterns = List.empty(growable: true);

  Maybe(Template pattern) {
    patterns.add(pattern);
  }

  Maybe or(Template pattern) {
    patterns.add(pattern);
    return this;
  }
}