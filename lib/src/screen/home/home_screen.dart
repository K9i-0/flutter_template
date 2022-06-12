import 'package:flutter/material.dart';
import 'package:flutter_template/src/extension/extension.dart';
import 'package:flutter_template/src/notifier/home/home_screen_notifier.dart';
import 'package:flutter_template/src/notifier/home/home_screen_state.dart';
import 'package:flutter_template/src/resource/assets.gen.dart';
import 'package:flutter_template/src/resource/route_name_resource.dart';
import 'package:flutter_template/src/screen/settings/settings_screen.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_screen_app_bar.dart';
part 'home_screen_body.dart';
part 'home_screen_drawer.dart';
part 'home_screen_fab.dart';

extension _ReaderEx on Reader {
  HomeScreenNotifier get notifier => this(homeScreenProvider.notifier);
}

extension _WidgetRefEx on WidgetRef {
  T selectFromState<T>(T Function(HomeScreenState state) selector) =>
      watch(homeScreenProvider.select(selector));
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: _AppBar(),
      drawer: _Drawer(),
      body: _Body(),
      floatingActionButton: _Fab(),
    );
  }
}
