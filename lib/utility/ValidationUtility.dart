bool emptyValid(String value) {
  if (value.isEmpty) {
    return false;
  }
  return true;
}

bool isValidEmail(String email) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(email))
    return false;
  else
    return true;
}

bool isVaildPassword(String pass) {
  if (pass.length < 8) {
    return false;
  }
  return true;
}

bool isValidMobile(String value) {
  if (value.length != 10)
    return false;
  else
    return true;
}
