
import 'package:arc360menu/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';


import 'package:flutter/material.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
  
     
    return Menu360App();
  }
}