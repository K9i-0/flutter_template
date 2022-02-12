import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/app.dart';
import 'src/helper/device_preview_screenshot_helper.dart';

Future<void> main() async {
  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode,
        tools: const [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(
            onScreenshot: onScreenshot,
          ),
        ],
        builder: (context) => const App(),
      ),
    ),
  );
}
