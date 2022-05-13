part of 'settings_screen.dart';

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: ThemeMode.values
          .map(
            (x) => ProviderScope(
              overrides: [
                _themeModeProvider.overrideWithValue(x),
              ],
              child: const _ThemeModeRadioListTile(),
            ),
          )
          .toList(growable: false),
    );
  }
}
