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
