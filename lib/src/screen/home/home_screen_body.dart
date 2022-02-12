part of 'home_screen.dart';

class _Body extends HookConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenState = ref.watch(homeScreenControllerProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pushed the button this many times:'),
          const Gap(16),
          Text(
            '${screenState.count}',
            style: context.textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
