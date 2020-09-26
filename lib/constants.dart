import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromRGBO(79, 0, 140, 1);
const kFormTextColor = Color(0xffff375e);
const kTextColor = Color(0xfff3f3f1);
const kAnimationDuration = Duration(milliseconds: 200);


// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kUserNameNullError = "PLease Enter your Username";
const String kShortUserError = "Username is too short";


