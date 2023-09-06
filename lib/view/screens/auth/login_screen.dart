import 'package:contractor/constants/fonts.dart';
import 'package:contractor/constants/routes.dart';
import 'package:contractor/view/widgets/my_button.dart';
import 'package:contractor/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../logic/controllers/auth_controller/auth_controller.dart';
import '../../../logic/controllers/auth_controller/login_controller.dart';
import '../../widgets/auth_widgets/auth_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.find<AuthController>();
  final loginController = Get.find<LoginController>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                    )),
                const MyText(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                  underLine: TextDecoration.none,
                  text: 'Log in',
                  fontFamily: arial,
                ),
                Form(
                  key: loginController.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AuthTextFromField(
                          controller: loginController.emailController,
                          obscureText: false,
                          validator: (value) {
                            loginController.checkEmail();
                          },
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GetBuilder<AuthController>(builder: (controller) {
                          return AuthTextFromField(
                            controller: loginController.passwordController,
                            obscureText: controller.isVisibilty ? false : true,
                            validator: (value) {
                              loginController.checkPassword();
                            },
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.visibilty();
                                },
                                icon: controller.isVisibilty
                                    ? const Icon(Icons.visibility_off,
                                        color: Colors.grey)
                                    : const Icon(Icons.visibility,
                                        color: Colors.grey)),
                            hintText: 'Password',
                          );
                        }),
                        const SizedBox(
                          height: 10,
                        ),
                        const MyText(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: secondColor,
                          underLine: TextDecoration.none,
                          text: 'Forgot Password?',
                          fontFamily: myriad,
                        ),
                      ]),
                ),
                Column(
                  children: [
                    MyAuthButton(
                        color: secondColor,
                        function: () {
                          Get.toNamed(Routes.homeScreen);
                          //    loginController.validateLogin();
                        },
                        widget: const MyText(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          underLine: TextDecoration.none,
                          text: 'Log In',
                          fontFamily: myriad,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const GoogleButton()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText(
                        fontFamily: myriad,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: mainColor,
                        underLine: TextDecoration.none,
                        text: 'Don\'t have an account? '),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.createAccountScreen);
                      },
                      child: const MyText(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: secondColor,
                        underLine: TextDecoration.underline,
                        text: 'Create one',
                        fontFamily: myriad,
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
