// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../constants/api_links.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../constants/my_string.dart';
import '../../../constants/routes.dart';
import '../../../view/widgets/my_text.dart';

class LoginController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  validateLogin() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      print("hello");
      loginWithEmail();
    } else {
      print("noooo");
    }
  }

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.loginEmail);
      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);

          emailController.clear();
          passwordController.clear();
          Get.offAll(Routes.homeScreen);
        } else if (json['code'] == 1) {
          throw jsonDecode(response.body)['message'];
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
      }
    } catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(error.toString())],
            );
          });
    }
  }

  checkPassword() {
    if (passwordController.value.text.isEmpty) {
      Get.rawSnackbar(
          snackPosition: SnackPosition.TOP,
          dismissDirection: DismissDirection.up,
          icon: const Icon(
            Icons.warning,
            color: mainColor,
          ),
          backgroundColor: Colors.grey.withOpacity(.3),
          messageText: const MyText(
              fontFamily: arial,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: 'Should be password'),
          duration: const Duration(seconds: 2));
    }
    return null;
  }

  checkEmail() {
    if (!RegExp(validationEmail).hasMatch(emailController.value.text) ||
        emailController.value.text.isEmpty) {
      Get.rawSnackbar(
          snackPosition: SnackPosition.TOP,
          dismissDirection: DismissDirection.up,
          icon: const Icon(
            Icons.warning,
            color: mainColor,
          ),
          backgroundColor: Colors.grey.withOpacity(.3),
          messageText: const MyText(
              fontFamily: arial,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: 'Please write valid email.'),
          duration: const Duration(seconds: 2));
    }
    return null;
  }
}
