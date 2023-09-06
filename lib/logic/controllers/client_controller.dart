import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class ClientController extends GetxController {
  bool isSelected = false;
  var idController = TextEditingController();
  var firstController = TextEditingController();
  var lastController = TextEditingController();
  var phoneController = TextEditingController();
  var phoneCodeController = TextEditingController();
  var emailController = TextEditingController();
  var referredController = TextEditingController();
  var propertyAddressController = TextEditingController();
  var lineAddressController = TextEditingController();
  var cityController = TextEditingController();
  var provinceController = TextEditingController();
  var postalController = TextEditingController();
  var stateController = TextEditingController();
  var webController = TextEditingController();
  var facebookController = TextEditingController();
  var twitterController = TextEditingController();
  var linkedinController = TextEditingController();

  void receiveMessage() {
    isSelected = !isSelected;
    update();
  }

  void onClientSave() {
    idController.clear();
    firstController.clear();
    lastController.clear();
    phoneController.clear();
    phoneCodeController.clear();
    emailController.clear();
    referredController.clear();
    propertyAddressController.clear();
    lineAddressController.clear();
    cityController.clear();
    provinceController.clear();
    postalController.clear();
    stateController.clear();
    webController.clear();
    facebookController.clear();
    twitterController.clear();
    linkedinController.clear();
    isSelected = false;
    Get.snackbar("save done", 'the client information is saved',
        backgroundColor: secondColor);
    update();
  }
}
