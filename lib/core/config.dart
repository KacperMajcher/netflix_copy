import 'package:netflix_copy/env/env.dart';

enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String url = '${Config.baseUrl}${Config.urlSettings}${Config.apiKey}';

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return Env.LINK;
      case Flavor.production:
        return Env.LINK;
    }
  }

  static String get urlSettings {
    switch (appFlavor) {
      case Flavor.development:
        return Env.SET;
      case Flavor.production:
        return Env.SET;
    }
  }

  static String get apiKey {
    switch (appFlavor) {
      case Flavor.development:
        return Env.KEY1;
      case Flavor.production:
        return Env.KEY1;
    }
  }

  static String get imageReader {
    switch (appFlavor) {
      case Flavor.development:
        return Env.LINK2;
      case Flavor.production:
        return Env.LINK2;
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
