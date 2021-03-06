import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/sign_in/sign_in_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STC_Gaming',
      initialRoute: SignIn.routeName,
      routes: routes,
    );
  }
}
