import 'package:flutter/material.dart';


import 'Screens/Log_In/LogIn_Screen.dart';
import 'Screens/Post_Login/PostLogin.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'DemoApp',

      home: LoginPge(),
      routes: {

      'nextpage':(context)=>Postloginscreen(),
      },
    );
  }
}

