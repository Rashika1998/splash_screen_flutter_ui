import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget
{
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  bool isObsecure = true;

  CustomTextField(
      {Key key, this.controller, this.data, this.hintText,this.isObsecure}
      ) : super(key: key);



  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.all(6.0),
      margin: EdgeInsets.all(4.0),
      child: TextFormField(
        controller: controller,
        obscureText: isObsecure,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: Colors.blueAccent,
              width: 5.0,
            ),
          ),
          prefixIcon: Icon(
            data,
            color: Theme.of(context).primaryColor,
          ),
          focusColor: Theme.of(context).primaryColor,
          hintText: hintText,
        ),
      ),
    );
  }
}
