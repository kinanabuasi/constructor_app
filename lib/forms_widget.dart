// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, unused_import, import_of_legacy_library_into_null_safe, unnecessary_import

import 'package:flutter/material.dart';
import '../../../constants/fonts.dart'; 
// import 'package:calendar_strip/calendar_strip.dart';

class Text_view extends StatelessWidget {
  const Text_view(
      {super.key,
      required this.txt,
      required this.statue,
      required this.fontFamily,
      required this.color,
      required this.fontSize});
  final String txt;
  final FontWeight statue;
  final String fontFamily;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: fontSize,
        fontWeight: statue,
      ),
    );
  }
}

class MyFileIcon extends StatelessWidget {
  final Color coverColor;
  final Color contentColor;

  MyFileIcon({this.coverColor = Colors.blue, this.contentColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:
          _FileIconPainter(coverColor: coverColor, contentColor: contentColor),
      size: Size(24.0, 24.0),
    );
  }
}

class _FileIconPainter extends CustomPainter {
  final Color coverColor;
  final Color contentColor;

  _FileIconPainter({required this.coverColor, required this.contentColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint coverPaint = Paint()..color = coverColor;
    Paint contentPaint = Paint()..color = contentColor;

    double width = size.width;
    double height = size.height;
    double radius = height / 2;

    // Draw cover
    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Rect.fromLTWH(0.0, 0.0, width, height), Radius.circular(radius)),
      coverPaint,
    );

    // Draw content
    Path contentPath = Path()
      ..moveTo(width * 0.3, height * 0.2)
      ..lineTo(width * 0.7, height * 0.2)
      ..lineTo(width * 0.7, height * 0.8)
      ..lineTo(width * 0.3, height * 0.8)
      ..close();
    canvas.drawPath(contentPath, contentPaint);

    // Draw fold
    Path foldPath = Path()
      ..moveTo(width * 0.3, height * 0.2)
      ..lineTo(width * 0.5, height * 0.2)
      ..lineTo(width * 0.5, height * 0.4)
      ..lineTo(width * 0.3, height * 0.4)
      ..close();
    canvas.drawPath(foldPath, contentPaint);
  }

  @override
  bool shouldRepaint(_FileIconPainter oldDelegate) {
    return oldDelegate.coverColor != coverColor ||
        oldDelegate.contentColor != contentColor;
  }
}

