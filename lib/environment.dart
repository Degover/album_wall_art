import 'package:dotenv/dotenv.dart';

class EnvConfig {
  static DotEnv env = DotEnv()..load([".env"]);

  static String get spotifyClientId {
    return env["SPOTIFY_CLIENT_ID"] ?? "";
  }

  static String get spotifyClientSecret {
    return env["SPOTIFY_CLIENT_SECRET"] ?? "";
  }
}
