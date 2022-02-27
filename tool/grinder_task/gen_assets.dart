part of '../grind.dart';

@Task('flutter_genを実行')
Future<void> genAssets() async {
  run(
    'fluttergen',
    arguments: [
      '-c',
      'pubspec.yaml',
    ],
  );
}
