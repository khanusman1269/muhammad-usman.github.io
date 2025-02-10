import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:usman_portfolio/core/constants/app_screens.dart';
import 'package:usman_portfolio/features/app/presentation/pages/splash_screen.dart';
import 'package:usman_portfolio/features/home/presentation/pages/home_screen.dart';

class AppRoutes {
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
      initialLocation: "/",
      debugLogDiagnostics: true,
      routes: <GoRoute>[
        // GoRoute(
        //   name: AppScreens.splashScreen,
        //   path: "/",
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const SplashScreen();
        //   },
        // ),
        GoRoute(
          name: AppScreens.homeScreen,
          path: "/",
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        )
      ]);
}
