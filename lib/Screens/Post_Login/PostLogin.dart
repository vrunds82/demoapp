import 'package:demoapp/Screens/Global/Global_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Postloginscreen extends StatefulWidget {
  @override
  _PostloginscreenState createState() => _PostloginscreenState();
}

class _PostloginscreenState extends State<Postloginscreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(onTap: (){
        Fluttertoast.showToast(
            msg: "Value Saved",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );
      },
        child: Container(color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(//mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back),
                  ],
                )),
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
               Row(children: [
                 Text("Name:",style: TextStyle(
                   color: blueColor
                 ),),
                 SizedBox(width: 25,),
                 Expanded(
                   child: TextField(decoration: InputDecoration(
                       border: InputBorder.none,
                     hintText: "Shelly Brais",hintStyle: TextStyle(
                     color: blueColor
                   )
                   ),),
                 )
               ],),
                Divider(thickness: 1.0,color: blueColor,),

                Row(children: [
                  Text("Team:",style: TextStyle(
                      color: blueColor
                  ),),
                  SizedBox(width: 25,),
                  Expanded(
                    child: TextField(decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Test Team",hintStyle: TextStyle(
                        color: blueColor
                    )
                    ),),
                  )
                ],),
                Divider(thickness: 1.0,color: blueColor,),

                Row(children: [
                  Text("Email:",style: TextStyle(
                      color: blueColor
                  ),),
                  SizedBox(width: 25,),
                  Expanded(
                    child: TextField(decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Shelly@sample.com",hintStyle: TextStyle(
                        color: blueColor
                    )
                    ),),
                  )
                ],),
                Divider(thickness: 1.0,color: blueColor,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
