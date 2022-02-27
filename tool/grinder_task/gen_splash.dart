part of '../grind.dart';

@Task('flutter_native_splashを実行')
Future<void> genSplash() async {
  run(
    'flutter',
    arguments: [
      'pub',
      'run',
      'flutter_native_splash:create',
    ],
  );
}
