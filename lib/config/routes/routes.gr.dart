// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../views/pages/home_page.dart';
import '../../views/pages/initial_page.dart';
import '../../views/pages/login_page.dart';
import '../../views/pages/onboarding_page.dart';

class Routes {
  static const String homePage = '/home-page';
  static const String initialPage = '/';
  static const String loginPage = '/login-page';
  static const String onboardingPage = '/onboarding-page';
  static const all = <String>{
    homePage,
    initialPage,
    loginPage,
    onboardingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.initialPage, page: InitialPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    InitialPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => InitialPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    OnboardingPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardingPage(),
        settings: data,
      );
    },
  };
}
