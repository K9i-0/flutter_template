import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_screen_state.dart';

final homeScreenProvider =
    StateNotifierProvider<HomeScreenNotifier, HomeScreenState>(
  (ref) => HomeScreenNotifier(),
);

class HomeScreenNotifier extends StateNotifier<HomeScreenState> {
  HomeScreenNotifier()
      : super(
          const HomeScreenState(count: 0),
        );

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
