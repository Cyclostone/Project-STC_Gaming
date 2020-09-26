import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stc_gaming_app/components/default_button.dart';
import 'package:stc_gaming_app/constants.dart';
// ignore: unused_import
import 'package:stc_gaming_app/images.dart';

import 'components/forgot_form.dart';

class ForgotEmail extends StatelessWidget {
  static String routeName = '/ForgotEmail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                height: MediaQuery.of(context).size.height * 0.35,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Enter your registered Email Address",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: Column(children: [
                  Container(
                    child: BuildForm(),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
