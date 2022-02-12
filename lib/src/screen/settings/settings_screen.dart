import 'package:flutter/material.dart';
import 'package:flutter_template/src/controller/theme_mode/theme_mode_controller.dart';
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
        title: const Text('Settings'),
      ),
      body: const _Body(),
    );
  }
}
