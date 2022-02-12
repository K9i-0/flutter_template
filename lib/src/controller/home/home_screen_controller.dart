import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_screen_state.dart';

final homeScreenControllerProvider =
    StateNotifierProvider<HomeScreenController, HomeScreenState>(
  (ref) => HomeScreenController(),
);

class HomeScreenController extends StateNotifier<HomeScreenState> {
  HomeScreenController()
      : super(
          const HomeScreenState(count: 0),
        );

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
