import 'package:flutter/material.dart';
import 'package:stc_gaming_app/components/no_account_text.dart';
import 'package:stc_gaming_app/components/social_icon.dart';
import 'package:stc_gaming_app/constants.dart';
import 'package:stc_gaming_app/screens/register_screen/register_screen.dart';

import 'signin_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Login to STC Gaming",
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
                    padding: EdgeInsets.all(30.0),
                    child: Column(children: [
                      Container(
                        child: SignInForm(),
                      ),
                      SizedBox(height: 30.0),
                      Text("Or", style: TextStyle(color: Colors.white)),
                      SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(
                            icon: 'assets/icons/facebook-2.svg',
                            press: () {},
                          ),
                          SocialIcon(
                            icon: 'assets/icons/google-icon.svg',
                            press: () {},
                          ),
                          SocialIcon(
                            icon: 'assets/icons/steam.svg',
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                      NoAccountText(
                        pretext: "Don't have an Account?",
                        text: "Register Here",
                        press: () => Navigator.pushNamed(context, RegisterScreen.routeName),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
