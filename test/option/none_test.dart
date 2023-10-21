import 'package:album_wall_art/option/none.dart';
import 'package:test/test.dart';

void main() {
  test('getters should work correctly', () {
    final none = None<int>();

    expect(none.isSome, isFalse);
    expect(none.isNone, isTrue);
    expect(() => none.value, throwsUnsupportedError);
  });

  test('should map correctly', () {
    final none = None<int>();

    final result = none.map((int number) => number.toString());

    expect(result.isSome, isFalse);
    expect(result.isNone, isTrue);
    expect(() => result.value, throwsUnsupportedError);
  });

  test('should return other value on "or" method', () {
    final none = None<String>();

    final result = none.or('other value');

    expect(result, equals('other value'));
  });

  test('should return other value on "orElse" method', () {
    final none = None<String>();

    final result = none.orElse(() => 'other value');

    expect(result, equals('other value'));
  });

  test('should throw on "orThrow" method', () {
    final none = None<String>();
    expect(
        () => none.orThrow(Exception("Something went wrong")), throwsException);
  });

  test('should return null on "toNullable" method', () {
    final none = None<String>();

    final result = none.toNullable();

    expect(result, isNull);
  });

  test('should not call consumer method', () {
    final none = None<String>();

    var result = 'function not called';

    none.consume((String val) => result = 'Called with: $val');

    expect(result, equals('function not called'));
  });
}
