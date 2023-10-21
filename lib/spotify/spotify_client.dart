import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:album_wall_art/environment.dart';

class SpotifyClient {
  DateTime _tokenExpiration = DateTime.now();
  String _unsafeToken = "";

  Future<void> _refreshToken() async {
    final response = await http.post(
        Uri.parse("https://accounts.spotify.com/api/token"),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body:
            "grant_type=client_credentials&client_id=${EnvConfig.spotifyClientId}&client_secret=${EnvConfig.spotifyClientSecret}");
    final endOfResponseTime = DateTime.now();

    final jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    final expireInSeconds = int.parse(jsonResponse["expires_in"]);
    _tokenExpiration =
        endOfResponseTime.add(Duration(seconds: expireInSeconds));

    _unsafeToken = jsonResponse["access_token"];
  }

  Future<String> _getToken() async {
    if (_tokenExpiration.compareTo(DateTime.now()) <= 0) {
      await _refreshToken();
    }

    return _unsafeToken;
  }
}
