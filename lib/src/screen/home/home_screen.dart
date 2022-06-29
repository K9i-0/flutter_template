import 'package:flutter/material.dart';
import 'package:flutter_template/src/extension/extension.dart';
import 'package:flutter_template/src/notifier/home/home_screen_notifier.dart';
import 'package:flutter_template/src/notifier/home/home_screen_state.dart';
import 'package:flutter_template/src/resource/assets.gen.dart';
import 'package:flutter_template/src/resource/route_name_resource.dart';
import 'package:flutter_template/src/screen/home/calendar/calendar_screen.dart';
import 'package:flutter_template/src/screen/home/settings/settings_screen.dart';
import 'package:flutter_template/src/screen/home/yukichi/yukichi_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_screen_app_bar.dart';
part 'home_screen_drawer.dart';
part 'home_screen_fab.dart';

final _screenIndexProvider = StateProvider((ref) => 0);
final _showRecordFabProvider = Provider(
  (ref) => ref.watch(_screenIndexProvider) == 0,
);

extension _ReaderEx on Reader {
  HomeScreenNotifier get notifier => this(homeScreenProvider.notifier);
}

extension _WidgetRefEx on WidgetRef {
  // ignore: unused_element
  T selectFromState<T>(T Function(HomeScreenState state) selector) =>
      watch(homeScreenProvider.select(selector));
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static const routeName = '/';
  static final List<Widget> _screenList = [
    const YukichiScreen(),
    const CalendarScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeScreenIndex = ref.watch(_screenIndexProvider);

    return Scaffold(
      appBar: const _AppBar(),
      drawer: const _Drawer(),
      body: _screenList[homeScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeScreenIndex,
        onTap: (index) => ref.read(_screenIndexProvider.notifier).state = index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '諭吉',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'カレンダー',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
      floatingActionButton:
          ref.watch(_showRecordFabProvider) ? const _Fab() : null,
    );
  }
}
