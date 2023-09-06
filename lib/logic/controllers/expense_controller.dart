import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenseController extends GetxController {
  String? selectedClient;
  String? selectedCode;

  var titleController = TextEditingController();
  var descriptionController = TextEditingController();
  var dateController = TextEditingController();
  var totalController = TextEditingController();

  List itemsDrop1 = [
    "Mohammed Aljbour",
    "Ahmed ali",
    "mustafa omar",
    "mustafa omar ",
  ];
  List codeList = [
    "None",
    "MMH",
    "OMA",
  ];

  void onMenuClientChanged(String? val) {
    selectedClient = val!;
    update();
  }

  void onExpenseSave() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
    totalController.clear();

    Get.snackbar("save done", 'the expense is saved',
        backgroundColor: Colors.green);
    update();
  }

  void onMenuCodeChanged(String? code) {
    selectedCode = code!;
    update();
  }
}
