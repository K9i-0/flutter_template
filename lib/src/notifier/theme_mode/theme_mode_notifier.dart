import 'package:flutter/material.dart';
import 'package:flutter_template/src/repository/settings_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  final initMode = ref.read(settingsRepositoryProvider).themeMode;
  return ThemeModeNotifier(read: ref.read, initMode: initMode);
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier({
    required Reader read,
    required ThemeMode initMode,
  })  : _read = read,
        super(initMode);
  final Reader _read;
  SettingsRepository get _settingsRepository =>
      _read(settingsRepositoryProvider);

  Future<void> updateThemeMode({
    required ThemeMode value,
  }) async {
    await _settingsRepository.setThemeMode(value: value);
    state = value;
  }
}
