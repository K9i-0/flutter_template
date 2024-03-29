import 'package:flutter/material.dart';
import 'package:flutter_template/src/repository/settings_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  final initMode = ref.read(settingsRepositoryProvider).themeMode;
  return ThemeModeNotifier(ref: ref, initMode: initMode);
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier({
    required Ref ref,
    required ThemeMode initMode,
  })  : _ref = ref,
        super(initMode);
  final Ref _ref;
  SettingsRepository get _settingsRepository =>
      _ref.read(settingsRepositoryProvider);

  Future<void> updateThemeMode({
    required ThemeMode value,
  }) async {
    await _settingsRepository.setThemeMode(value: value);
    state = value;
  }
}
