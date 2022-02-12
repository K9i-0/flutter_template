part of 'home_screen.dart';

class _Drawer extends HookConsumerWidget {
  const _Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              context.l10n.homeScreenDrawerHeaderTitle,
              style: context.textTheme.headlineLarge,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(context.l10n.homeScreenDrawerHeaderLabelSettings),
            onTap: () => context.push(SettingsScreen.routeName),
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
