import 'package:flutter/material.dart';
import 'package:flutter_template/src/controller/home/home_screen_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_screen_body.dart';
part 'home_screen_fab.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const _Body(),
      floatingActionButton: const _Fab(),
    );
  }
}
