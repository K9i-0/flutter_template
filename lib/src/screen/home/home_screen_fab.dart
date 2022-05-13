part of 'home_screen.dart';

class _Fab extends HookConsumerWidget {
  const _Fab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(homeScreenProvider.notifier);

    return FloatingActionButton(
      onPressed: notifier.increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
