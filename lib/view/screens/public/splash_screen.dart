import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../auth/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: AnimatedSplashScreen(
        splash: Image.asset(
          "assets/images/small-logo.png",
          fit: BoxFit.fill,
        ),
        nextScreen: const WelcomeScreen(),
        splashTransition: SplashTransition.rotationTransition,
        splashIconSize: 200,
        duration: 2500,
        curve: Curves.fastOutSlowIn,
        backgroundColor: mainColor.withOpacity(.9),
        animationDuration: const Duration(seconds: 2),
      )),
    );
  }
}

List<String> clients = [
  "yamen",
  "oudai",
  "osama",
  "kinan",
  "mohammed",
  "yazan"
];
List<String> materials = [
  "doors",
  "windows",
  "walls",
  "ground",
  "colors",
  "bed rooms"
];
