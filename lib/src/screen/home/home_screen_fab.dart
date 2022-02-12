part of 'home_screen.dart';

class _Fab extends HookConsumerWidget {
  const _Fab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenController = ref.watch(homeScreenControllerProvider.notifier);

    return FloatingActionButton(
      onPressed: screenController.increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
