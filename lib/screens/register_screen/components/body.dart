import 'package:flutter/material.dart';
import 'package:stc_gaming_app/components/no_account_text.dart';
import 'package:stc_gaming_app/components/social_icon.dart';
import 'package:stc_gaming_app/constants.dart';

import 'register_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.04),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Register",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white)),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                      child: Column(children: [
                        Container(
                          child: BuildForm(),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                        Text("Or", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        SizedBox(height: 50.0),
                        NoAccountText(
                          pretext: "Already have an Account?",
                          text: "Login",
                          press: () {},
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

