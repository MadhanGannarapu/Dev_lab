import 'package:auto_route/auto_route.dart';
import 'package:dev_lab/config/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    clearLocalStorageData() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.clear();
    }

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home Page'),
          actions: [
            IconButton(
              onPressed: clearLocalStorageData,
              icon: Icon(Icons.delete),
            )
          ],
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 4,
            padding: EdgeInsets.all(5),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              RaisedButton(
                child: Text('Theme Laboratory'),
                onPressed: () {
                  // ExtendedNavigator.of(context).push(
                  //   // Routes.camerScreen,
                  // );
                },
              ),
                RaisedButton(
                child: Text('Rest API'),
                onPressed: () {
                  // ExtendedNavigator.of(context).push(
                  //   // Routes.camerScreen,
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
