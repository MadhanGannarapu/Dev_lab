import 'package:auto_route/auto_route.dart';
import 'package:dev_lab/config/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _loggedin = (prefs.getBool('logged_in') ?? false);

    if (_loggedin) {
      ExtendedNavigator.of(context).push(
        Routes.homePage,
      );
    } else {
      ExtendedNavigator.of(context).push(
        Routes.loginPage,
      );
    }
  }

  @override
  void initState() {
    checkFirstSeen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('\t\t\t\t\t\t\t\t\tinitial page \n Please wait loading...'),
      ),
    );
  }
}
