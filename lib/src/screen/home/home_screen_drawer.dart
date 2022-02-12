part of 'home_screen.dart';

class _Drawer extends HookConsumerWidget {
  const _Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text('Drawer')),
          ListTile(
            leading: const Icon(Icons.info),
            // TODO(K9i-0): 翻訳
            title: const Text('OSS License'),
            onTap: () => showLicensePage(context: context),
          ),
        ],
      ),
    );
  }
}
