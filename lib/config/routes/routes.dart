import 'package:auto_route/auto_route_annotations.dart';
import 'package:dev_lab/views/pages/home_page.dart';
import 'package:dev_lab/views/pages/initial_page.dart';
import 'package:dev_lab/views/pages/login_page.dart';
import 'package:dev_lab/views/pages/onboarding_page.dart';
import 'package:dev_lab/views/pages/theme_lab_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: InitialPage, initial: true),
    AdaptiveRoute(page: LoginPage),
    AdaptiveRoute(page: OnboardingPage),
    AdaptiveRoute(page: ThemeLabPage),
  ],
)
class $Router {}
