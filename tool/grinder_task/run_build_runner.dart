part of '../grind.dart';

@Task('build_runnerでファイル生成')
void runBuildRunner() {
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
