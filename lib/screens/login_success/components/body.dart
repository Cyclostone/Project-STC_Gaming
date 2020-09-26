import 'package:flutter/material.dart';
import 'package:stc_gaming_app/components/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.04),
      Image.asset(
        "assets/images/success.png",
        height: MediaQuery.of(context).size.height * 0.4,
      ),
      Text(
        "Login Success",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Spacer(),
      SizedBox(
        width: MediaQuery.of(context).size.height * 0.6,
        child: DefaultButton(
          text: "Back to Home",
          press: () {},
        ),
      ),
      Spacer(),
    ]);
  }
}
