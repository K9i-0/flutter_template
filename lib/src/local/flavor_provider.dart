import 'package:flutter_template/src/resource/assets.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flavorProvider = Provider<Flavor>(
  (ref) {
    const flavorString = String.fromEnvironment('FLAVOR');
    switch (flavorString) {
      case 'dev':
        return Flavor.dev;
      case 'stg':
        return Flavor.stg;
      case 'prod':
        return Flavor.prod;
      default:
        return Flavor.dev;
    }
  },
);

enum Flavor {
  dev,
  stg,
  prod,
}

extension FlavorEx on Flavor {
  AssetGenImage toAssetGenImage() {
    switch (this) {
      case Flavor.dev:
        return Assets.images.appIconDev;
      case Flavor.stg:
        return Assets.images.appIconStg;
      case Flavor.prod:
        return Assets.images.appIconProd;
    }
  }
}
