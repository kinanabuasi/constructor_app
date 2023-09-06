import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainContractorController extends GetxController {
  PageController pageTaskController = PageController(viewportFraction: 1);
  PageController pageProjectController = PageController(viewportFraction: 1);
  PageController pageInvoiceController = PageController(viewportFraction: 1);
  double height = 30;
  void barValue(double value) {
    height = value;
    update();
  }

  var currPageValue = 0.0;
  double scaleFactor = 0.8;
}
