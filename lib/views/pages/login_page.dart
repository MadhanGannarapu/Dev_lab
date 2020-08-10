import 'package:auto_route/auto_route.dart';
import 'package:dev_lab/config/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _onboardKey = false;
  bool _loginKey = false;

  Future login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('logged_in', true);
    bool _onboardingScreensSeen = (prefs.getBool('onboarding_screens') ?? false);
    print('_onboardingScreensSeen: $_onboardingScreensSeen');
    if (!_onboardingScreensSeen) {
      ExtendedNavigator.of(context).push(
        Routes.onboardingPage,
      );
    } else {
      ExtendedNavigator.of(context).push(
        Routes.homePage,
      );
    }
  }

  checkLocalStorageData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _onboardKey = (prefs.getBool('onboarding_screens') ?? false);
    _loginKey = (prefs.getBool('logged_in') ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          FlutterLogo(
            size: 100,
          ),
          Center(
            child: Text('login page'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text('clear the storage'),
              ),
              RaisedButton(
                onPressed: login,
                child: Text('Login'),
              ),
            ],
          ),
          Text(
            _loginKey || _loginKey == null
                ? 'onborad key => removed'
                : 'login key =>exists',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            _onboardKey || _loginKey == null
                ? 'onborad key => removed'
                : 'onborad key => exists',
            style: Theme.of(context).textTheme.headline6,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
