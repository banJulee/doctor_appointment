import 'package:doctor_appointment/constant/Colors.dart';
import 'package:flutter/material.dart';
import 'TextStyle.dart';

Widget testInputField(String hintText, TextEditingController controller, name,
      String errorTest,bool obscureText) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[100]))
    ),
    child: Theme(
      data: new ThemeData(
        primaryColor: Colors.grey,
      ),
      child: TextField(
        controller: controller,
          obscureText:obscureText,
        style: inputTextStyle13(),
        keyboardType: name,
        cursorColor: appColor,
        decoration: InputDecoration(
          errorStyle: errorTextStyle(),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          border: InputBorder.none,
          hintText: hintText,
          errorText: errorTest,
            hintStyle: TextStyle(color: Colors.grey[400])
        ),

      ),
    ),
  );
}
