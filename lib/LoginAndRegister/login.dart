import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sample_flutter_splash_screen/Widgets/customTextField.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}





class _LoginState extends State<Login>
{
  File imgFile;
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width, _screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 10.0,),
            InkWell(
              onTap: ()=> print("Choose an profile picture"),
              child: CircleAvatar(
                radius: _screenWidth * 0.15,
                backgroundColor: Colors.white,
                backgroundImage: imgFile == null ? null : FileImage(imgFile),
                child: imgFile == null ? Icon(Icons.add_a_photo_rounded , size: _screenWidth * 0.15, color: Colors.lightBlue,) : null,
              ),
            ),
            SizedBox(height: 8.0,),
            Form(
              child: Column(
                children: [
                  CustomTextField(
                    hintText: "e-mail",
                    data: Icons.email_rounded,
                    isObsecure: false,
                  ),
                  CustomTextField(
                    hintText: "password",
                    data: Icons.lock_rounded,
                    isObsecure: true,
                  ),
                ],
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.lightBlue)
              ),
              onPressed: ()=> print("You're successfully logged in...!"),
              color: Colors.lightBlue,
              child: Text("Sign In", style: TextStyle(color: Colors.white,),),
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 20.0, right: 20.0,),
              hoverColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 4.0,
              width: _screenWidth * 0.8,
              color: Colors.lightBlue,
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
