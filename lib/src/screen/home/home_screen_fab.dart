part of 'home_screen.dart';

class _Fab extends HookConsumerWidget {
  const _Fab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: ref.read.notifier.increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
