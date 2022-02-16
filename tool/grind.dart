import 'dart:io';

import 'package:github/github.dart';
import 'package:grinder/grinder.dart';
import 'package:yaml/yaml.dart';

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

@Task('リリースPull Requestを作成')
Future<void> createReleasePR() async {
  await _switchLatestDevelopBranch();
  log('最新のdevelopブランチに切り替えました。');

  final newVersion = _incrementVersion();
  log('バージョンを更新しました');

  final releaseBranchName = 'release/$newVersion';
  await _createReleaseBranch(releaseBranchName: releaseBranchName);
  log('developからreleaseブランチを作成し、バージョン更新をcommit&pushしました。');

  await _createPullRequest(
    title: 'Release $newVersion',
    releaseBranchName: releaseBranchName,
  );
  log('Pull Requestを作成しました。');
}

Future<void> _switchLatestDevelopBranch() async {
  final switchResult = await _runProcess(
    command: 'git switch develop',
  );
  if (switchResult.exitCode != 0) {
    fail(
      'developブランチへの切り替えに失敗しました、'
      '必要なら手動で最新のdevブランチに切り替えてください。\n'
      '${switchResult.stderr}',
    );
  }
  final pullResult = await _runProcess(
    command: 'git pull',
  );
  if (pullResult.exitCode != 0) {
    fail(
      'git pullに失敗しました、'
      '必要なら手動で最新のdevブランチに切り替えてください。\n'
      '${switchResult.stderr}',
    );
  }
}

/// バージョン更新
String _incrementVersion() {
  final args = context.invocation.arguments;
  final newVersionName = args.getOption('version-name');
  if (newVersionName == null) {
    fail('--version-name=X.X.Xで新しいバージョン名を指定してください');
  }

  final pubspecFile = File('./pubspec.yaml');
  final pubspecString = pubspecFile.readAsStringSync();

  // ignore: avoid_dynamic_calls
  final version = loadYaml(pubspecString)['version'] as String;
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

Future<void> _createReleaseBranch({required String releaseBranchName}) async {
  await _runProcess(command: 'git switch -c $releaseBranchName');
  await _runProcess(command: 'git add .');
  await _runProcess(command: 'git commit -m $releaseBranchName"');
  await _runProcess(command: 'git push');
}

/// PR作成
Future<void> _createPullRequest({
  required String title,
  required String releaseBranchName,
}) async {
  // ダイアログで認証を求める
  final github = GitHub(auth: findAuthenticationFromEnvironment());
  await github.pullRequests.create(
    RepositorySlug('K9i-0', 'flutter_template'),
    CreatePullRequest(title, 'dev', 'master'),
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
