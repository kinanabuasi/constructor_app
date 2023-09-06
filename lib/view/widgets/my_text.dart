import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration underLine;
  final String fontFamily;
  const MyText(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      required this.underLine,
      required this.text,
      required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: underLine,
          color: color,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
