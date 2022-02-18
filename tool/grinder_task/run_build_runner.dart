part of '../grind.dart';

@Task('build_runnerでファイル生成')
Future<void> runBuildRunner() async {
  run(
    'flutter',
    arguments: [
      'pub',
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs'
    ],
  );
}
