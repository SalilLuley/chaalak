// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../ui/views/bookingHistory/booking_history.dart';
import '../../ui/views/booking_history_detail/detail_view.dart';
import '../../ui/views/home/home_view.dart';
import '../../ui/views/login/login_view.dart';
import '../../ui/views/splash/splash_view.dart';

class Routes {
  static const String splashView = '/';
  static const String homeView = '/home-view';
  static const String bookingHistoryView = '/booking-history-view';
  static const String bookingHistoryDetailView = '/booking-history-detail-view';
  static const String loginView = '/login-view';
  static const all = <String>{
    splashView,
    homeView,
    bookingHistoryView,
    bookingHistoryDetailView,
    loginView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.bookingHistoryView, page: BookingHistoryView),
    RouteDef(Routes.bookingHistoryDetailView, page: BookingHistoryDetailView),
    RouteDef(Routes.loginView, page: LoginView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SplashView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    BookingHistoryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BookingHistoryView(),
        settings: data,
      );
    },
    BookingHistoryDetailView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BookingHistoryDetailView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}
