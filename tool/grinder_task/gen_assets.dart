part of '../grind.dart';

@Task('flutter_genを実行')
void genAssets() {
  run(
    'fluttergen',
    arguments: [
      '-c',
      'pubspec.yaml',
    ],
  );
}
