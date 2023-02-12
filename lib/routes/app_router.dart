import 'package:cancer_chat/app/modules/doctor_pages/views/first_doctor.dart';
import 'package:cancer_chat/app/modules/emptypage.dart';
import 'package:cancer_chat/app/modules/favouriates/views/favourites_view.dart';
import 'package:cancer_chat/app/modules/forgot_password/views/forgot_password.dart';
import 'package:cancer_chat/app/modules/forgot_password/views/input_pin.dart';
import 'package:cancer_chat/app/modules/homepage.dart/views/homepage.dart';
import 'package:cancer_chat/app/modules/introduction_page/controller/page_controller.dart';
import 'package:cancer_chat/app/modules/notifications_view/views/notification.dart';
import 'package:cancer_chat/app/modules/review_page/views/review.dart';
import 'package:cancer_chat/app/modules/sign_in/views/sign_in.dart';
import 'package:cancer_chat/app/modules/sign_up/views/sign_up.dart';
import 'package:cancer_chat/app/modules/splashscreen.dart';
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
    GoRouter(initialLocation: _AppRoutePaths.splashscreen, routes: [
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return DashboardScreen(child: child);
      },
      routes: [
        GoRoute(
          path: _AppRoutePaths.emptyPage,
          name: Routes.emptyPage,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const EmptyPage(),
          ),
        )
      ]),
  GoRoute(
    path: _AppRoutePaths.splashscreen,
    name: Routes.splashScreen,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const SplashScreen()),
  ),
  GoRoute(
    path: _AppRoutePaths.introduction,
    name: Routes.introduction,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      context: context,
      state: state,
      child: Introduction(),
    ),
  ),
  GoRoute(
    path: _AppRoutePaths.signUp,
    name: Routes.signUp,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      context: context,
      state: state,
      child: const SignUp(), // as you caalready created the go route path for your screen, all you have to do is 
    ),
  ),
  GoRoute(
    path: _AppRoutePaths.signIn,
    name: Routes.signIn,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      context: context,
      state: state,
      child:  SignIn(),
    ),
  ),
  GoRoute(
    path: _AppRoutePaths.forgotPassword,
    name: Routes.forgotPassword,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const ForgotPassword()),
  ),
  GoRoute(
    path: _AppRoutePaths.pinInput,
    name: Routes.pinInput,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const PinInput()),
  ),
  GoRoute(
    path: _AppRoutePaths.homePage,
    name: Routes.homePage,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const HomePage()),
  ),
  GoRoute(
    path: _AppRoutePaths.doctor1,
    name: Routes.doctor1,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const Doctor1()),
  ),
  GoRoute(
    path: _AppRoutePaths.notificationView,
    name: Routes.notificationView,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const NotificationView()),
  ),
  GoRoute(
    path: _AppRoutePaths.favouritesView,
    name: Routes.favouritesView,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const FavouritesView()),
  ),
  GoRoute(
    path: _AppRoutePaths.reviews,
    name: Routes.reviews,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const Reviews()),
  ),
  // GoRoute(
  //   path: _AppRoutePaths.notifications,
  //   name: Routes.notifications,
  //   pageBuilder: (context, state) => buildPageWithDefaultTransition(
  //       context: context, state: state, child: const Doctor2()),
  // ),
]);
