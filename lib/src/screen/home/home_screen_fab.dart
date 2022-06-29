part of 'home_screen.dart';

class _Fab extends HookConsumerWidget {
  const _Fab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: ref.read.notifier.increment,
      tooltip: 'Earn',
      child: const Icon(Icons.money),
    );
  }
}
