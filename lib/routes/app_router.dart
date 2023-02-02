import 'package:cancer_chat/app/modules/homepage.dart/views/dashboard.dart';
import 'package:cancer_chat/app/modules/sign_in/views/sign_in.dart';
import 'package:cancer_chat/app/modules/sign_up/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app/modules/dashboard_screen/view/dashboard.dart';
import '../core/utils/helpers/fade_animation.dart';
import 'app_routes.dart';
part 'app_route_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

abstract class AppRouter {
  static GoRouter get router => _router;

  static void goNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      router.goNamed(
        name,
        params: params,
        queryParams: queryParams,
        extra: extra,
      );
}

final GoRouter _router =
    GoRouter(initialLocation: _AppRoutePaths.homePage, routes: [
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return DashboardScreen(child: child);
      },
      routes: [
        GoRoute(
          path: _AppRoutePaths.homePage,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const HomePage(),
          ),
        )
      ]),
  GoRoute(
    path: _AppRoutePaths.signUp,
    name: Routes.signUp,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      context: context,
      state: state,
      child: const SignUp(),
    ),
  ),
  GoRoute(
    path: _AppRoutePaths.signIn,
    name: Routes.signIn,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      context: context,
      state: state,
      child: const SignIn(),
    ),
  )
]);
