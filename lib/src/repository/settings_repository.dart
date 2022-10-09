import 'package:flutter/material.dart';
import 'package:flutter_template/src/local/shared_preferences_provider.dart';
import 'package:flutter_template/src/resource/key_resource.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final settingsRepositoryProvider = Provider(
  (ref) => SettingsRepository(ref: ref),
);

class SettingsRepository {
  SettingsRepository({
    required Ref ref,
  }) : _ref = ref;
  final Ref _ref;

  SharedPreferences get _prefs => _ref.read(sharedPreferencesProvider);

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
