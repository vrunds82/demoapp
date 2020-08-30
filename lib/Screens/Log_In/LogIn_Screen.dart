

import 'package:demoapp/Screens/Global/Global_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


class LoginPge extends StatefulWidget {
  @override
  _LoginPgeState createState() => _LoginPgeState();
}

class _LoginPgeState extends State<LoginPge> {

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: DottedBorder(
        color: redColor,
        strokeWidth: 1,
        child: Center(child: Text("Incorrect Username/Password",style: TextStyle(
            fontWeight: FontWeight.w500,color: redColor,fontSize: 16
        ),)),
      ),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              Text("Welcome to our page",style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 15
              ),),
              SizedBox(height: 20,),
              Text("If you do not have an account with us",style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 15
              ),),
              SizedBox(height: 2,),
              Text("Signup here.",style: TextStyle(color: blueColor,fontSize: 15,fontWeight: FontWeight.w500),),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextfield(title: "Username or Email",),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextfield(title: "Password",),
              ),
              SizedBox(height: 20,),
              CustomRaisedbutton(title: "Login",bgcolor: blueColor,textclr: whiteColor,
              click: (){
                showAlertDialog(context);
              },),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: GestureDetector(onTap: (){
                  _settingModalBottomSheet(context);
                },
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: DottedBorder(
                          color: blueColor,
                          strokeWidth: 1,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Forget Password ",style: TextStyle(
                              fontWeight: FontWeight.w500
                            ),),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(color: blueColor,height: 250,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox( height: 20,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text("Reset Your Password",style: TextStyle(
                    color: whiteColor,fontWeight: FontWeight.w500
                  ),),
               SizedBox(width: 40,),
                  GestureDetector(
                      onTap:
                      (){
                        Navigator.of(context).pop();
                      },child: Icon(Icons.file_download,color: whiteColor,))
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextfieldOfBottomBar(title: "Username or Email",),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: RaisedButton(color: Colors.deepPurpleAccent.withOpacity(0.5),
                        onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text("Send Confirmation Link",style: TextStyle(
                          color: whiteColor
                        ),),
                      ),),
                    ),
                  ],
                ),
              )
            ],
          )
        );
      }
  );
}