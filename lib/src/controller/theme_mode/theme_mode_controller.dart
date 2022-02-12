import 'package:flutter/material.dart';
import 'package:flutter_template/src/repository/settings_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeControllerProvider =
    StateNotifierProvider<ThemeModeController, ThemeMode>((ref) {
  final initMode = ref.read(settingsRepositoryProvider).themeMode;
  return ThemeModeController(read: ref.read, initMode: initMode);
});

class ThemeModeController extends StateNotifier<ThemeMode> {
  ThemeModeController({
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
