import 'package:contractor/logic/controllers/invoicer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class MyTextFormField extends StatelessWidget {
  final Function validator;
  final String hintText;
  const MyTextFormField({
    super.key,
    required this.validator,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: mainColor,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      decoration: InputDecoration(
          fillColor: Colors.transparent,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
          filled: true,
          border: UnderlineInputBorder(
              borderSide: const BorderSide(color: mainColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: mainColor),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: mainColor),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

class MyTextFormFieldWithDatePicker extends StatelessWidget {
  final Function validator;
  final Function onPressed;
  final String hintText;

  const MyTextFormFieldWithDatePicker({
    super.key,
    required this.validator,
    required this.onPressed,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvoiceController>(builder: (controller) {
      return TextFormField(
        cursorColor: mainColor,
        keyboardType: TextInputType.text,
        validator: (value) => validator(value),
        decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: hintText,
            suffixIcon: IconButton(
                icon: const Icon(Icons.lock_clock, color: mainColor),
                onPressed: onPressed()),
            hintStyle: const TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
            filled: true,
            border: UnderlineInputBorder(
                borderSide: const BorderSide(color: mainColor),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: mainColor),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: mainColor),
                borderRadius: BorderRadius.circular(10)),
            errorBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(10))),
      );
    });
  }
}
