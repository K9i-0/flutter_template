import 'dart:io';

import 'package:grinder/grinder.dart';

void main(List<String> args) => grind(args);

@Task('build_runnerでファイル生成')
Future<void> generate() async {
  await _runProcess(
    command: 'flutter pub run build_runner build --delete-conflicting-outputs',
  );
}

@Task('CocoaPodsのアップデート(パッケージアプデ時に使う)')
Future<void> updatePods() async {
  await _runProcess(
    command: 'rm -rf Pods/',
    workingDirectory: 'ios',
  );
  await _runProcess(
    command: 'rm -rf Podfile.lock',
    workingDirectory: 'ios',
  );
  await _runProcess(
    command: 'flutter clean',
  );
  await _runProcess(
    command: 'flutter pub get',
  );
  await _runProcess(
    command: 'pod install --repo-update',
    workingDirectory: 'ios',
  );
}

Future<ProcessResult> _runProcess({
  required String command,
  String? workingDirectory,
}) async {
  final splits = command.split(' ');
  final executable = splits.first;
  final args = splits.skip(1).toList();
  final result = await Process.run(
    executable,
    args,
    workingDirectory: workingDirectory,
  );
  stdout.write(result.stdout);
  stderr.write(result.stderr);
  return result;
}
