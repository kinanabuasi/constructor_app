// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable, non_constant_identifier_names, avoid_print, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

class Text_view extends StatelessWidget {
  const Text_view(
      {super.key,
      required this.txt,
      required this.statue,
      required this.fontFamily,
      required this.color,
      required this.fontSize});
  final String txt;
  final FontWeight statue;
  final String fontFamily;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Text(
      txt,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: fontSize,
        fontWeight: statue,
      ),
    );
  }
}

class custom_switch extends StatelessWidget {
  const custom_switch({super.key, required this.Value});
  final bool Value;
  @override
  Widget build(BuildContext context) {
    final isToggled = Value.obs;
    return FlutterSwitch(
      height: 19.0,
      width: 35.29,
      padding: 4.0,
      toggleSize: 15.0,
      borderRadius: 10.0,
      activeColor: Color.fromRGBO(125, 176, 14, 1),
      value: isToggled.value,
      onToggle: (value) => isToggled.value = !value,
    );
  }
}

class MyDateController extends GetxController {
  var selectedDate = DateTime.now().obs;

  Future<void> selectDate(BuildContext context) async {
    final ThemeData theme = Theme.of(context);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(1990),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              brightness: Brightness.light,
              primary: Color.fromRGBO(125, 176, 14, 1),
            ),
            textTheme: theme.textTheme.copyWith(
              labelLarge: TextStyle(
                color: Color.fromRGBO(1, 41, 57, 1),
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }
}

enum PowerButton { on, off }

class CheckBox extends StatelessWidget {
  const CheckBox({Key? key, required this.Value}) : super(key: key);
  final PowerButton Value;
  @override
  Widget build(BuildContext context) {
    final buttonController = Get.put(CheckBoxController());

    return Obx(() => ListTile(
          // title: const Text('On'),
          selectedColor: Color.fromRGBO(125, 176, 14, 1),
          leading: Radio<PowerButton>(
            value: Value,
            groupValue: buttonController.button.value,
            onChanged: (value) {
              buttonController.setButton(value!);
            },
            activeColor: Color.fromRGBO(125, 176, 14, 1),
          ),
        ));
  }
}

class CheckBoxController extends GetxController {
  var button = PowerButton.on.obs;

  void setButton(PowerButton value) {
    button.value = value;
  }
}

class MyImageController extends GetxController {
  var image = Rxn<File>();
  Future<void> getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      image.value = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  void deleteImage() {
    image.value?.deleteSync(recursive: true);
    image.value = null;
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextField
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
        color: Color.fromRGBO(0, 0, 0, 0.2),
        width: 0.5,
      ));
}
