import 'package:driven_layout/src/template/errors/errors.dart';
import 'package:driven_layout/src/template/language/templates/templates.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<Capture>()])
void main() {
  group("Capture tests:", () {
    test("ref getter and setter work correct", ()  {
      final Capture sut = Capture();
      Template mockTemplate = Leaf("");
      sut.ref = mockTemplate;
      expect(sut.ref, isA<Leaf>());
      expect(sut.ref, equals(mockTemplate));
    });

    test("when ref null, throws UnimplementedError", ()  {
      final Capture sut = Capture();
      try {
        final _ = sut.ref;
      } catch(e) {
        expect(e, isA<CaptureNullRefError>());
      }
    });

  });
}