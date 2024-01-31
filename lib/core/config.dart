import 'package:netflix_copy/app/services/api_keys.dart';

enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return ApiConfig.baseUrl;
      case Flavor.production:
        return ApiConfig.baseUrl;
    }
  }

  static String get imageReader {
    switch (appFlavor) {
      case Flavor.development:
        return ApiConfig.imageBaseUrl;
      case Flavor.production:
        return ApiConfig.imageBaseUrl;
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }
}
