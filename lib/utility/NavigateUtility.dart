import 'package:flutter/material.dart';

void navigateOneScreenToOther(BuildContext context, Widget otherScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => otherScreen));
}

void backOnScreen(BuildContext context) {
  Navigator.pop(context);
}

void navigateScreenWithFinish(BuildContext context, Widget otherScreen) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (BuildContext context) => otherScreen),
          (Route<dynamic> route) => false);
}
