import 'package:contractor/constants/fonts.dart';
import 'package:contractor/logic/controllers/auth_controller/registeration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/my_string.dart';
import '../../../constants/routes.dart';
import '../../../logic/controllers/auth_controller/auth_controller.dart';
import '../../widgets/auth_widgets/auth_text_form_field.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_text.dart';

class CreateAccountScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();
  final regController = Get.find<RegisterationController>();

  CreateAccountScreen({super.key});

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
                    fontFamily: arial,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    underLine: TextDecoration.none,
                    text: 'Create your profile'),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  AuthTextFromField(
                      controller: regController.nameController,
                      obscureText: false,
                      validator: (value) {},
                      suffixIcon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      hintText: 'Name'),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthTextFromField(
                      controller: regController.companyNameController,
                      obscureText: false,
                      validator: (value) {},
                      suffixIcon: const Icon(
                        Icons.location_city,
                        color: Colors.grey,
                      ),
                      hintText: 'Company name'),
                  const SizedBox(height: 15),
                  AuthTextFromField(
                    controller: regController.emailController,
                    obscureText: false,
                    validator: (value) {
                      if (!RegExp(validationEmail).hasMatch(value)) {
                        return 'Enter valid Email';
                      } else {
                        return null;
                      }
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
                      controller: regController.passwordController,
                      obscureText: controller.isVisibilty2 ? false : true,
                      validator: () {},
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.visibilty2();
                          },
                          icon: controller.isVisibilty2
                              ? const Icon(Icons.visibility_off,
                                  color: Colors.grey)
                              : const Icon(Icons.visibility,
                                  color: Colors.grey)),
                      hintText: 'Password',
                    );
                  }),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyAuthButton(
                        color: secondColor,
                        function: () {
                          /*   regController.checkEmailCreate();
                          regController.checkPasswordCreate();
                          regController.checkName();
                        //  regController.checkCompanyName();
                          Get.toNamed(Routes.jobScreen); */

                          regController.registerWithEmail();
                        },
                        widget: const MyText(
                            fontFamily: myriad,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            underLine: TextDecoration.none,
                            text: 'Create now')),
                    const SizedBox(
                      height: 10,
                    ),
                    const GoogleButton()
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const MyText(
                            fontFamily: myriad,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: mainColor,
                            underLine: TextDecoration.none,
                            text: 'Already have an account? '),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.loginScreen);
                          },
                          child: const MyText(
                              fontFamily: myriad,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: secondColor,
                              underLine: TextDecoration.underline,
                              text: 'Log in'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const MyText(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: secondColor,
                            underLine: TextDecoration.none,
                            text: "Privacy Policy",
                            fontFamily: "Myriad"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 2,
                              decoration: const BoxDecoration(color: mainColor),
                              height: 15),
                        ),
                        const MyText(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: secondColor,
                            underLine: TextDecoration.none,
                            text: "Terms of Services",
                            fontFamily: "Myriad")
                      ],
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
