import 'package:flutter/material.dart';
import 'package:flutter_template/src/local/shared_preferences_provider.dart';
import 'package:flutter_template/src/resource/key_resource.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final settingsRepositoryProvider = Provider(
  (ref) => SettingsRepository(read: ref.read),
);

class SettingsRepository {
  SettingsRepository({
    required Reader read,
  }) : _read = read;
  final Reader _read;

  SharedPreferences get _prefs => _read(sharedPreferencesProvider);

  ThemeMode get themeMode {
    final themeModeIndex = _prefs.getInt(preferenceKeyThemeMode);
    if (themeModeIndex != null) {
      return ThemeMode.values[themeModeIndex];
    } else {
      return ThemeMode.system;
    }
  }

  Future<void> setThemeMode({
    required ThemeMode value,
  }) async {
    await _prefs.setInt(preferenceKeyThemeMode, value.index);
  }
}
