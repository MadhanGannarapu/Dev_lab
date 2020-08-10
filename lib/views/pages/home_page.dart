import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    clearLocalStorageData() async {
       SharedPreferences prefs = await SharedPreferences.getInstance();
       prefs.clear();
    }
    return WillPopScope(
      onWillPop: ()async=>false,
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home Page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Clear the local storage data'),
            onPressed: () => clearLocalStorageData(),
          ),
        ),
      ),
    );
  }
}
