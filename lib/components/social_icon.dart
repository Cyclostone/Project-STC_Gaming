import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 3.5),
        padding: EdgeInsets.all(10),
        width: 110,
        height: 55,
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
