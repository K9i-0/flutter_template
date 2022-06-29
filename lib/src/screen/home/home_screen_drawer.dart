part of 'home_screen.dart';

class _Drawer extends HookConsumerWidget {
  const _Drawer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Assets.images.fukuzawaYukichi.image(),
            accountName: const Text('sample'),
            accountEmail: const Text('sample@example.com'),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text(context.l10n.homeScreenDrawerHeaderLabelOSSLicense),
            onTap: () => context.push(licenseScreenRouteName),
          ),
        ],
      ),
    );
  }
}
