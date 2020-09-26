import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
    this.text,
    this.pretext,
    this.press,
  }) : super(key: key);

  final String pretext;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(pretext,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            )),
        SizedBox(height: 20.0),
        GestureDetector(
          onTap: press,
          child: Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              )),
        ),
      ],
    );
  }
}
