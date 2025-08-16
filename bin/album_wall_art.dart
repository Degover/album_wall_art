import 'package:album_wall_art/album_wall_art.dart' as album_wall_art;
import 'package:album_wall_art/spotify/spotify_client.dart';

void main(List<String> arguments) async {
  final client = SpotifyClient();

  print('Hello world: ${album_wall_art.calculate()}!');
}
