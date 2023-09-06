import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  var taskNumController = TextEditingController();
  var addressController = TextEditingController();
  var dateController = TextEditingController();
  var timeController = TextEditingController();
  var descriptionController = TextEditingController();
  String? selectedCustomer;
  String? selectedGroup;

  List customerList = [
    "Mohammed Aljbour",
    "Ahmed ali",
    "mustafa omar",
    "mustafa omar ",
  ];

  List groupList = [
    "group A",
    "group B",
    "group C",
  ];

  void onMenuCustomerChanged(String? val) {
    selectedCustomer = val!;
    update();
  }

  void onMenuGroupChanged(String? value) {
    selectedGroup = value!;
    update();
  }

  void onTaskSave() {
    taskNumController.clear();
    descriptionController.clear();
    dateController.clear();
    timeController.clear();
    addressController.clear();

    Get.snackbar("save done", 'the expense is saved',
        backgroundColor: Colors.green);
    update();
  }
}
