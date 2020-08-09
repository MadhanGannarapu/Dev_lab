import 'package:auto_route/auto_route_annotations.dart';
import 'package:dev_lab/views/pages/home_page.dart';
import 'package:dev_lab/views/pages/login_page.dart';
import 'package:dev_lab/views/pages/onboarding_page.dart';
@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: LoginPage, initial: true),
    AdaptiveRoute(page: OnboardingPage),
  ],
)
class $Router {}

