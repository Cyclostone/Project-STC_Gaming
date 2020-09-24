import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colors;
  final IconData iconData;
  final Function onPressed;
  SocialIcon({this.colors, this.iconData, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0),
      child: Container(
        width: 110.0,
        height: 55.0,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(colors: colors, tileMode: TileMode.clamp)),
        child: RawMaterialButton(
          onPressed: onPressed,
          child: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}