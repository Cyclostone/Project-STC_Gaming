import 'package:flutter/material.dart';
import 'package:stc_gaming_app/screens/forgot_password/forgot_email.dart';
import 'package:stc_gaming_app/screens/register_screen/register_screen.dart';
import 'package:stc_gaming_app/screens/sign_in/sign_in_screen.dart';

import 'screens/login_success/login_success_screen.dart';
import 'screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  ForgotEmail.routeName: (context) => ForgotEmail(),
};
