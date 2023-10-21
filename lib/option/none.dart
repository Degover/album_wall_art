import 'package:album_wall_art/option/option.dart';

class None<T> extends Option<T> {
  @override
  T get value => throw UnsupportedError("Tried to get a non-existing value");

  @override
  bool get isSome => false;

  @override
  Option<U> map<U>(U Function(T) mapper) => None<U>();

  @override
  T or(T other) => other;

  @override
  T orElse(T Function() factory) => factory();

  @override
  T orThrow(Exception exception) => throw exception;

  @override
  T? toNullable() => null;

  @override
  void consume(void Function(T) consumer) {/*do nothing*/}
}
