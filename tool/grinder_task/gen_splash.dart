part of '../grind.dart';

@Task('flutter_native_splashを実行')
void genSplash() {
  run(
    'flutter',
    arguments: [
      'pub',
      'run',
      'flutter_native_splash:create',
    ],
  );
}
