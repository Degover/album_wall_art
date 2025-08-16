import 'package:album_wall_art/spotify/models/album_type.dart';
import 'package:album_wall_art/spotify/models/image_source.dart';

class Album {
  final String id;
  final String name;
  final AlbumType type;
  final List<ImageSource> albumCovers;

  Album(
      {required this.id,
      required this.name,
      required this.type,
      required this.albumCovers});
}
