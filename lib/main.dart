import 'package:flutter/material.dart';
import 'package:stc_gaming_app/forgot_password/forgot_activate.dart';
import 'package:stc_gaming_app/forgot_password/forgot_email.dart';
import 'package:stc_gaming_app/forgot_password/forgot_enter_code.dart';
import 'package:stc_gaming_app/forgot_password/forgot_enter_new_password.dart';
// ignore: unused_import
import 'package:stc_gaming_app/login_account.dart';
import 'package:stc_gaming_app/register.dart';

import 'forgot_password/forgot_enter_username.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForgotEnterUsername()
    );
  }
}
