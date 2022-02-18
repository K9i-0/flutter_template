part of '../grind.dart';

@Task('バージョン更新')
String incrementVersion() {
  final args = context.invocation.arguments;
  final newVersionName = args.getOption('version-name');
  if (newVersionName == null) {
    fail('--version-name=X.X.Xで新しいバージョン名を指定してください');
  }

  final pubspecFile = File('./pubspec.yaml');
  final pubspecString = pubspecFile.readAsStringSync();

  final pubspec = loadYaml(pubspecString) as Map;
  final version = pubspec['version'] as String;
  final splits = version.split('+');
  final versionCode = int.parse(splits[1]);
  final newVersionCode = versionCode + 1;

  final updatedPubspecString = pubspecString.replaceFirst(
    'version: $version',
    'version: $newVersionName+$newVersionCode',
  );
  pubspecFile.writeAsStringSync(updatedPubspecString);

  return '$newVersionName+$newVersionCode';
}
