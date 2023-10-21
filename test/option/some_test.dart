import 'package:album_wall_art/option/some.dart';
import 'package:test/test.dart';

void main() {
  test('getters should work correctly', () {
    final innerValue = 'string value';
    final some = Some(innerValue);

    expect(some.isSome, isTrue);
    expect(some.isNone, isFalse);
    expect(some.value, equals(innerValue));
  });

  test('should map correctly', () {
    final innerValue = 123;
    final some = Some(innerValue);

    final result = some.map((int number) => number.toString());

    expect(result.isSome, isTrue);
    expect(result.isNone, isFalse);

    final expectedResult = '123';
    expect(result.value, equals(expectedResult));
  });

  test('should return inner value on "or" method', () {
    final innerValue = 'original value';
    final some = Some(innerValue);

    final result = some.or('other value');

    expect(result, equals(innerValue));
  });

  test('should return inner value on "orElse" method', () {
    final innerValue = 'original value';
    final some = Some(innerValue);

    final result = some.orElse(() => 'other value');

    expect(result, equals(innerValue));
  });

  test('should return inner value on "orThrow" method', () {
    final innerValue = 'original value';
    final some = Some(innerValue);

    final result = some.orThrow(Exception("Something went wrong"));

    expect(result, equals(innerValue));
  });

  test('should return inner value on "toNullable" method', () {
    final innerValue = 'original value';
    final some = Some(innerValue);

    final result = some.toNullable();

    expect(result, equals(innerValue));
  });

  test('should call consumer method correctly', () {
    final innerValue = 'original value';
    final some = Some(innerValue);

    var result = 'function not called';

    some.consume((String val) => result = 'Called with: $val');

    expect(result, equals('Called with: $innerValue'));
  });
}
