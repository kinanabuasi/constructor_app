import 'package:contractor/constants/fonts.dart';
import 'package:contractor/view/widgets/my_button.dart';
import 'package:contractor/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/neweng.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(.4),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const MyText(
                  fontFamily: arial,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                  underLine: TextDecoration.none,
                  text: 'Welcome'),
              const SizedBox(),
              const SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    MyAuthButton(
                        color: mainColor,
                        function: () {
                          Get.toNamed(Routes.createAccountScreen);
                          // Get.offNamed(Routes.createAccountScreen);
                        },
                        widget: const MyText(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          underLine: TextDecoration.none,
                          text: 'Sign Up Free',
                          fontFamily: myriad,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    MyAuthButton(
                        color: Colors.white,
                        function: () {
                          Get.toNamed(Routes.loginScreen);
                          // Get.offNamed(Routes.loginScreen);
                        },
                        widget: const MyText(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                          underLine: TextDecoration.none,
                          text: 'Log In',
                          fontFamily: myriad,
                        )),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
