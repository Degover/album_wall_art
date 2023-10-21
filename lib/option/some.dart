import 'package:album_wall_art/option/option.dart';

class Some<T> extends Option<T> {
  late final T _innerValue;

  Some(T value) {
    this._innerValue = value;
  }

  @override
  T get value => _innerValue;

  @override
  bool get isSome => true;

  @override
  Option<U> map<U>(U Function(T val) mapper) {
    final mappedValue = mapper(_innerValue);
    return Some(mappedValue);
  }

  @override
  T or(T other) => _innerValue;

  @override
  T orElse(T Function() factory) => _innerValue;

  @override
  T orThrow(Exception exception) => _innerValue;

  @override
  T? toNullable() => _innerValue;

  @override
  void consume(void Function(T) consumer) => consumer(_innerValue);
}
