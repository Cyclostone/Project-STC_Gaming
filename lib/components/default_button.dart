import 'package:flutter/material.dart';
import 'package:stc_gaming_app/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55.0,
        width: double.infinity,
        color: kFormTextColor,
        child: FlatButton(
          onPressed: press,
          child: Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              )),
        ));
  }
}
