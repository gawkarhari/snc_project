import 'package:flutter/material.dart';
import 'package:snc_project/app_screens/LoginScreen.dart';
import 'package:snc_project/app_screens/Profile.dart';
import 'package:splashscreen/splashscreen.dart';

import 'app_screens/MyPanel.dart';
import 'app_screens/RegisterScreen.dart';
import 'app_screens/Task.dart';


void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Task()));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Image.asset('assets/snc_splashscreen.jpg')
      ),
    );
  }
}



