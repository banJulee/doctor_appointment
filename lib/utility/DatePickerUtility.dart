import 'package:doctor_appointment/constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Future<String> selectDate(BuildContext context) async {
  final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
                primary: appColor,
                onPrimary: Colors.black,
                surface: appColor,
                onSurface: Colors.black,
                error: appColor),
          ), // This will change to light theme.
          child: child,
        );
      },
      firstDate:
      DateTime.now(),
      lastDate: DateTime(2050));


}