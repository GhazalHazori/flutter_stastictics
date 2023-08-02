class StringUtile {
  bool isEmail(String value) {
    RegExp regExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regExp.hasMatch(value);
  }

  bool ispasswordValid(String value) {
    RegExp regExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return regExp.hasMatch(value);
  }

  bool isphone(String value) {
    RegExp regExp = RegExp(r'^(?:[+0]9)?[0-9]{10}');
    return regExp.hasMatch(value);
  }

  bool isaddress(String value) {
    RegExp regExp = RegExp(r'^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$');
    return regExp.hasMatch(value);
  }

  bool isname(value) {
    RegExp regExp = RegExp(r'^[A-Z][a-zA-Z]{3,}(?: [A-Z][a-zA-Z]*){0,2}$');
    return regExp.hasMatch(value);
  }
}
