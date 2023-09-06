import 'package:contractor/constants/colors.dart';
import 'package:contractor/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_text.dart';

class MyAuthButton extends StatelessWidget {
  final Color color;
  final Function() function;
  final Widget widget;
  const MyAuthButton({
    super.key,
    required this.color,
    required this.function,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          onPressed: function,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: widget,
          )),
    );
  }
}

class MyButton extends StatelessWidget {
  final Color color;
  final Color addColor;
  final Function() function;
  final Widget widget;
  const MyButton({
    super.key,
    required this.color,
    required this.function,
    required this.widget,
    required this.addColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
          onPressed: function,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              appIcon(icon: AppIcons.add, iconColor: addColor, height: 24),
              const SizedBox(width: 10),
              widget
            ]),
          )),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: mainColor, style: BorderStyle.solid)),
      width: double.infinity,
      height: 50,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/google.svg"),
            const SizedBox(
              width: 10,
            ),
            const MyText(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mainColor,
                underLine: TextDecoration.none,
                text: "Log in with Google",
                fontFamily: "Myriad")
          ],
        ),
      ),
    );
  }
}
