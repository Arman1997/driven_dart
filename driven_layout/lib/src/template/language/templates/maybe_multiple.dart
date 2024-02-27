import 'template.dart' show Template;

class MaybeMultiple extends Template {
  final bool cacheFirst;
  final Template pattern;

  const MaybeMultiple({required this.pattern,  this.cacheFirst = true});
}