import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_template/src/extension/extension.dart';
import 'package:flutter_template/src/notifier/theme_mode/theme_mode_notifier.dart';
import 'package:flutter_template/src/resource/assets.gen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'resource/l10n/generated/l10n.dart';
import 'resource/route_name_resource.dart';
import 'screen/home/home_screen.dart';

part 'router.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(_routerProvider);

    return MaterialApp.router(
      // バックグラウンドでkillされてから復元するときに必要
      restorationScopeId: 'app',
      // useInheritedMediaQuery、locale、builderは、DevicePreviewに必要
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // routeInformationProvider、routeInformationParser、routerDelegateは
      // go_routerに必要
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.delegate.supportedLocales,
      onGenerateTitle: (context) => context.l10n.appTitle,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: ref.watch(themeModeProvider),
    );
  }
}
