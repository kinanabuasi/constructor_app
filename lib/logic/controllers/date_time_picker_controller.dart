import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimePickerController extends GetxController {
  var date = DateTime.now().obs;

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: date.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (pickedDate != null && pickedDate != date.value) {
      date.value = pickedDate;
    }
  }
}
