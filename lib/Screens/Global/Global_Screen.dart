import 'package:flutter/material.dart';

const blueColor = Color(0xff1663be);
const blackColor = Colors.black;
const whiteColor = Colors.white;
const redColor = Colors.red;

class CustomTextfield extends StatelessWidget {

 final String title;



 CustomTextfield({this.title,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: new InputDecoration(

          hintText: title,
        hintStyle: TextStyle(
          color: blackColor,fontWeight: FontWeight.w500
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: blueColor),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: blueColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color:blueColor),
        )

      ),

    );

  }
}

class CustomRaisedbutton extends StatelessWidget {

  final String title;
  final Color bgcolor;
  final Color textclr;
  final VoidCallback click;

  CustomRaisedbutton({this.title, this.bgcolor, this.click,this.textclr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Row(
        children: [
          Expanded(
            child: RaisedButton(color: bgcolor,
              onPressed: (){
              click();
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(title,style: TextStyle(color: textclr,fontWeight: FontWeight.w500),
            ),
              ),),
          ),
        ],
      ),
    );
  }
}

class CustomTextfieldOfBottomBar extends StatelessWidget {

  final String title;



  CustomTextfieldOfBottomBar({this.title,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: new InputDecoration(   filled: true,
          fillColor: Colors.grey.withOpacity(0.9),
          hintText: title,
          hintStyle: TextStyle(
              color: blackColor,fontWeight: FontWeight.w500
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: blueColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: blueColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color:blueColor),
          )

      ),

    );

  }
}