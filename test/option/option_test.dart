import 'package:album_wall_art/option/none.dart';
import 'package:album_wall_art/option/option.dart';
import 'package:album_wall_art/option/option_extensions.dart';
import 'package:album_wall_art/option/some.dart';
import 'package:test/test.dart';

void main() {
  test('should map value correctly', () {
    final value = 'just some value';

    final result = Option.toOption(value);

    expect(result.isSome, isTrue);
    expect(result.isNone, isFalse);
    expect(result.value, equals(value));
    expect(result, isA<Some<String>>());
  });

  test('should map value correctly with extension method', () {
    final value = 'just some value';

    final result = value.toOption();

    expect(result.isSome, isTrue);
    expect(result.isNone, isFalse);
    expect(result.value, equals(value));
    expect(result, isA<Some<String>>());
  });

  test('should map null correctly', () {
    final String? value = null;

    final result = Option.toOption(value);

    expect(result.isSome, isFalse);
    expect(result.isNone, isTrue);
    expect(result, isA<None<String>>());
  });

  test('should map null correctly with extension method', () {
    final String? value = null;

    final result = value.toOption();

    expect(result.isSome, isFalse);
    expect(result.isNone, isTrue);
    expect(result, isA<None<String>>());
  });
}
