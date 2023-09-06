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

class RegisterationController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  //       api function
  Future<void> registerWithEmail() async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
      Map body = {
        'name': nameController.text,
        'email': emailController.text.trim(),
        'password': passwordController.text
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);
          nameController.clear();
          emailController.clear();
          passwordController.clear();
          Get.offAllNamed(Routes.homeScreen);
        } else {
          throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }

  void checkPasswordCreate() {
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
    } else {
      return;
    }
  }

  void checkEmailCreate() {
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
    } else {
      return;
    }
  }

  void checkName() {
    if (!RegExp(validationName).hasMatch(nameController.value.text) ||
        nameController.value.text.isEmpty) {
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
              text: 'Please write valid name.'),
          duration: const Duration(seconds: 2));
    } else {
      return;
    }
  }

  /* void checkCompanyName() {
    if (!RegExp(validationName).hasMatch(companyNameController.value.text) ||
        companyNameController.value.text.isEmpty) {
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
              text: 'Please write valid company name.'),
          duration: const Duration(seconds: 2));
    } else {
      return;
    }
  } */
}
