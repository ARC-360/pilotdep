

import 'package:arc360menu/src/screens/MyApp.dart';
import 'package:arc360menu/src/screens/home.dart';
import 'package:arc360menu/src/screens/menu_home.dart';
import 'package:arc360menu/src/serives/fetch_data.dart';
import 'package:flutter/material.dart';
 

import '../main.dart';
import 'curd/auto_fetch/auto_fetch_curd.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/Home': (BuildContext context) => MenuHome(),
  
};

class Menu360App extends StatefulWidget {
  // AutoFetchDao autoFetchDao;
  // Menu360App(){}
  @override
  _Menu360AppState createState() => _Menu360AppState();
}

class _Menu360AppState extends State<Menu360App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '360 Menu',
      routes: routes,
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        // body: MenuSlider(),
        body: FutureBuilder(
          future:fectchDataFromfirebase(),
          builder: (context, snapshot) {
            return MyHomePage();
          }
        ),
      ),
    );
  }
}
