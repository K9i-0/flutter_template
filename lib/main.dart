import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/src/app.dart';
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
        // tools: const [
        //   ...DevicePreview.defaultTools,
        //   DevicePreviewScreenshot(
        //     onScreenshot: onScreenshot,
        //   ),
        // ],
        availableLocales: L10n.delegate.supportedLocales,
        builder: (context) => const App(),
      ),
    ),
  );
}
