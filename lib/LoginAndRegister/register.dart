import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sample_flutter_splash_screen/Widgets/customTextField.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>
{
  File imgFile;
  int _value = 1;
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
                      hintText: "Full name",
                      data: Icons.person,
                      isObsecure: false,
                    ),
                    CustomTextField(
                      hintText: "e-mail",
                      data: Icons.email_rounded,
                      isObsecure: false,
                    ),
                    CustomTextField(
                      hintText: "password",
                      data: Icons.person,
                      isObsecure: false,
                    ),
                    CustomTextField(
                      hintText: "Re-enter password",
                      data: Icons.person,
                      isObsecure: false,
                    ),

                    Text("Choose your role", style: TextStyle(color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300,),),

                    for (int i = 1; i <= 3; i++)
                      ListTile(
                        title: Text(
                          'Role $i',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(color: i == 3 ? Colors.lightBlueAccent : Colors.blue),
                        ),
                        leading: Radio(
                          value: i,
                          groupValue: _value,
                          activeColor: Color(0xFF03A9f4),
                          onChanged: i == 3 ? null : (int value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                      ),


                  ],
                ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.lightBlue)
              ),
              onPressed: ()=> print("You're successfully registered...!"),
              color: Colors.lightBlue,
              child: Text("Sign Up", style: TextStyle(color: Colors.white,),),
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
              height: 10.0,
            ),
            Text("Privacy and policies", style: TextStyle(color: Colors.lightBlue, fontSize: 15.0,),),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}

