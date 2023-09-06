// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'constants/colors.dart';
import 'constants/routes.dart';
import 'forms_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   colorScheme: const ColorScheme.light(
        //     // primary: mainColor, // Change the primary color
        //   ),
        // ),
        home: forms_screen(),
    );
        // initialRoute: AppRoutes.splash,
        // getPages: AppRoutes.routes);
        
  }
}
