part of 'home_screen.dart';

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.selectFromState((state) => state.count);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pushed the button this many times:'),
          const Gap(16),
          Text(
            '$count',
            style: context.textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
