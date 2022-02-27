part of '../grind.dart';

@Task('flutter_launcher_iconsを実行')
Future<void> genIcons() async {
  run(
    'flutter',
    arguments: [
      'pub',
      'run',
      'flutter_launcher_icons:main',
    ],
  );
}
