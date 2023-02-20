import 'package:cancer_chat/app/modules/book_appointment/views/book_appointment1.dart';
import 'package:cancer_chat/app/modules/doctor_pages/views/first_doctor.dart';
import 'package:cancer_chat/app/modules/emptypage.dart';
import 'package:cancer_chat/app/modules/favouriates/views/favourites_view.dart';
import 'package:cancer_chat/app/modules/forgot_password/views/forgot_password.dart';
import 'package:cancer_chat/app/modules/forgot_password/views/input_pin.dart';
import 'package:cancer_chat/app/modules/homepage.dart/views/homepage.dart';
import 'package:cancer_chat/app/modules/introduction_page/controller/page_controller.dart';
import 'package:cancer_chat/app/modules/notifications_view/views/notification.dart';
import 'package:cancer_chat/app/modules/patient_details/views/patient_details.dart';
import 'package:cancer_chat/app/modules/payment_section/views/payment_page.dart';
import 'package:cancer_chat/app/modules/review_page/views/review.dart';
import 'package:cancer_chat/app/modules/search_page/view/search_page.dart';
import 'package:cancer_chat/app/modules/sign_in/views/sign_in.dart';
import 'package:cancer_chat/app/modules/sign_up/views/sign_up.dart';
import 'package:cancer_chat/app/modules/splashscreen.dart';
import 'package:cancer_chat/app/modules/top_doctor/view/top_doctor.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app/modules/Profile/ProfilePage.dart';

import '../app/modules/Profile/Profile_Settings.dart';
import '../app/modules/Profile/Profile_Settings.dart';
import '../app/modules/dashboard_screen/view/dashboard.dart';
import '../app/modules/specialist_doctor/view/specialist_doctor.dart';
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
// change the value of this initial location to the name of your allocated screen
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
      child:
          const SignUp(), // as you caalready created the go route path for your screen, all you have to do is
    ),
  ),
  GoRoute(
    path: _AppRoutePaths.signIn,
    name: Routes.signIn,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      context: context,
      state: state,
      child: SignIn(),
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
  GoRoute(
    path: _AppRoutePaths.searchPage,
    name: Routes.searchPage,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const SearchPage()),
  ),
  GoRoute(
    path: _AppRoutePaths.specialistDoctor,
    name: Routes.specialistDoctor,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const SpecialistDoctor()),
  ),
  GoRoute(
    path: _AppRoutePaths.topDoctor,
    name: Routes.topDoctor,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: const TopDoctors()),
  ),
  GoRoute(
    path: _AppRoutePaths.bookAppointment1,
    name: Routes.bookAppointment1,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: BookAppointment1()),
  ),
  GoRoute(
    path: _AppRoutePaths.patientDetails,
    name: Routes.patientDetails,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: PatientDetails()),
  ),
  GoRoute(
    path: _AppRoutePaths.paymentPage,
    name: Routes.paymentPage,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context, state: state, child: PaymentPage()),
  )
  // GoRoute(
  //   path: _AppRoutePaths.notifications,
  //   name: Routes.notifications,
  //   pageBuilder: (context, state) => buildPageWithDefaultTransition(
  //       context: context, state: state, child: const Doctor2()),
  // ),
]);
