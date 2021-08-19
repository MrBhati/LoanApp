String? validateName(String? value) {
  String patttern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value!.length == 0) {
    return "Name is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Name must be a-z and A-Z";
  }
  return null;
}

String? validateEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  if (value!.length == 0) {
    return "Email is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Invalid Email";
  } else {
    return null;
  }
}

String? validateUser(String? value) {
  if (value!.length == 0) {
    return "Username is Required";
  } else {
    return null;
  }
}

String? validatePass(String? value) {
  if (value!.length == 0) {
    return "Password is Required";
  } else if (value.length < 8) {
    return "Password must minimum 8 charactor";
  } else {
    return null;
  }
}

String? validateNumber(String? value) {
  if (value!.length == 0) {
    return "Password is Required";
  } else if (value.length < 10) {
    return "Password must minimum 8 charactor";
  } else {
    return null;
  }
}

String? validateRequired(String? value) {
  if (value!.length == 0) {
    return "This filed is Required";
  } else {
    return null;
  }
}
