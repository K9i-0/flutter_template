part of 'app.dart';

final _routerProvider = Provider(
  (ref) => GoRouter(
    debugLogDiagnostics: true,
    // observers: [
    //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    // ],
    routes: [
      GoRoute(
        path: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: licenseScreenRouteName,
        builder: (context, state) => LicensePage(
          applicationIcon: Assets.images.licensePageIcon.image(width: 100),
        ),
      ),
    ],
  ),
);
