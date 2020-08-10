import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'config/routes/routes.gr.dart';
import 'config/themes.dart';
// import 'views/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Development Laboratory',
      theme: PrimaryDevLabTheme.of(context),
      builder: ExtendedNavigator(
        router: Router(),
      ),
    );
  }
}
