import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

void hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

String getCurrentDay() {
  var now = new DateTime.now();
  var formatter = new DateFormat('dd');
  return formatter.format(now);
}

String getTomorrow() {
  var now = DateTime.now();
  var tomorrow = DateTime(now.year, now.month, now.day + 1);
  var formatter = new DateFormat('dd');
  return formatter.format(tomorrow);
}
