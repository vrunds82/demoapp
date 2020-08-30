import 'package:flutter/material.dart';

class Postloginscreen extends StatefulWidget {
  @override
  _PostloginscreenState createState() => _PostloginscreenState();
}

class _PostloginscreenState extends State<Postloginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Row(children: [
           Text("Name:")
         ],)
        ],
      ),
    );
  }
}
