part of 'home_screen.dart';

class _AppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(context.l10n.homeScreenTitle),
    );
  }
}
