import 'package:netflix_copy/app/services/api_keys.dart';

enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String url = '${Config.baseUrl}${Config.endpoint}${Config.apiKey}';

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return ApiConfig.baseUrl;
      case Flavor.production:
        return ApiConfig.baseUrl;
    }
  }

  static String get endpoint {
    switch (appFlavor) {
      case Flavor.development:
        return ApiConfig.endpointPage1;
      case Flavor.production:
        return ApiConfig.endpointPage2;
    }
  }

  static String get apiKey {
    switch (appFlavor) {
      case Flavor.development:
        return ApiConfig.apiKey;
      case Flavor.production:
        return ApiConfig.apiKey;
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
