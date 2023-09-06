// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../constants/icons.dart';

Widget defaultTextForm(
        {required TextEditingController controller,
        required TextInputType type,
        var onSubmit,
        var onChanged,
        var onTap,
        var validate,
        int? Length,
        String? label,
        String? hint,
        bool isBorder = true,
        // IconData prefix,
        String? suffix,
        var suffixPressed,
        bool isPassword = false}) =>
    TextFormField(
      maxLines: Length,
      validator: validate,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      obscureText: isPassword,
      onTap: onTap,
      decoration: isBorder
          ? InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.start,
              labelText: label,
              labelStyle: const TextStyle(color: Colors.grey),
              hintStyle: const TextStyle(color: Colors.grey),
              hintText: hint,
              //floatingLabelAlignment: FloatingLabelAlignment.start,
              // prefixIcon: Icon(
              //   prefix,
              // ),
              suffixIcon: suffix != null
                  ? IconButton(
                      onPressed: suffixPressed,
                      icon: appIcon(
                        icon: suffix,
                        iconColor: Colors.grey,
                      ),
                    )
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5.0),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 2.0),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 2.0),
              ),
            )
          : InputDecoration.collapsed(
              floatingLabelAlignment: FloatingLabelAlignment.start,
              hintStyle: const TextStyle(color: Colors.grey),
              hintText: hint,
              //floatingLabelAlignment: FloatingLabelAlignment.start,
              // prefixIcon: Icon(
              //   prefix,
              // ),
            ),
    );
