part of 'settings_screen.dart';

final _themeModeProvider = Provider<ThemeMode>(
  (ref) => throw UnimplementedError(),
);

extension _ThemeModeEx on ThemeMode {
  String getLabel(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ThemeMode.system:
        return l10n.settingsScreenThemeModeRadioLabelSystem;
      case ThemeMode.light:
        return l10n.settingsScreenThemeModeRadioLabelLight;
      case ThemeMode.dark:
        return l10n.settingsScreenThemeModeRadioLabelDark;
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
    final currentThemeMode = ref.watch(themeModeProvider);
    final themeModeNotifier = ref.watch(themeModeProvider.notifier);

    return RadioListTile<ThemeMode>(
      title: Text(themeMode.getLabel(context)),
      value: themeMode,
      groupValue: currentThemeMode,
      onChanged: (nullableValue) {
        if (nullableValue != null) {
          themeModeNotifier.updateThemeMode(value: nullableValue);
        }
      },
    );
  }
}
