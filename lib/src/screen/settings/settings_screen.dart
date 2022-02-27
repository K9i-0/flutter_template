import 'package:flutter/material.dart';
import 'package:flutter_template/src/extension/extension.dart';
import 'package:flutter_template/src/notifier/theme_mode/theme_mode_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'settings_screen_body.dart';
part 'theme_mode_radio_list_tile.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settingsScreenTitle),
      ),
      body: const _Body(),
    );
  }
}
