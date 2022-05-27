import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/src/app.dart';
import 'package:flutter_template/src/helper/device_preview_screenshot_helper.dart';
import 'package:flutter_template/src/local/shared_preferences_provider.dart';
import 'package:flutter_template/src/resource/l10n/generated/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: DevicePreview(
        enabled: const bool.fromEnvironment('enable_device_preview'),
        tools: const [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(
            onScreenshot: onScreenshot,
          ),
        ],
        availableLocales: L10n.delegate.supportedLocales,
        builder: (context) => const App(),
      ),
    ),
  );
}
