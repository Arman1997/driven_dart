import 'template.dart' show Template;

class Maybe extends Template {
  final List<Template> patterns;

  Maybe(Template pattern) : patterns = List<Template>.from([pattern], growable: true);

  Maybe or(Template pattern) {
    patterns.add(pattern);
    return this;
  }
}