import 'package:album_wall_art/option/option.dart';

extension OptionExtensions<T> on T? {
  Option<T> toOption() => Option.toOption(this);
}
