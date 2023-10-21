import 'package:album_wall_art/option/some.dart';

import 'none.dart';

abstract class Option<T> {
  T get value;
  bool get isSome;
  bool get isNone => !isSome;

  static Option<T> toOption<T>(T? value) {
    if (value == null) {
      return None<T>();
    }

    return Some(value);
  }

  T or(T other);
  T orElse(T Function() factory);
  T orThrow(Exception exception);
  Option<U> map<U>(U Function(T) mapper);
  T? toNullable();
  void consume(void Function(T) consumer);
}
