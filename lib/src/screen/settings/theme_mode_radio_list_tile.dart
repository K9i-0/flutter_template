part of 'settings_screen.dart';

final _themeModeProvider = Provider<ThemeMode>(
  (ref) => throw UnimplementedError(),
);

extension _ThemeModeEx on ThemeMode {
  String get label {
    switch (this) {
      case ThemeMode.system:
        return 'System';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
    }
  }
}

class _ThemeModeRadioListTile extends HookConsumerWidget {
  const _ThemeModeRadioListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(_themeModeProvider);
    final currentThemeMode = ref.watch(themeModeControllerProvider);
    final themeModeController = ref.watch(themeModeControllerProvider.notifier);

    return RadioListTile<ThemeMode>(
      title: Text(themeMode.label),
      value: themeMode,
      groupValue: currentThemeMode,
      onChanged: (nullableValue) {
        if (nullableValue != null) {
          themeModeController.updateThemeMode(value: nullableValue);
        }
      },
    );
  }
}
