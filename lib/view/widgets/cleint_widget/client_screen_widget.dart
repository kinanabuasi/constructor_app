import 'package:flutter/material.dart';

Widget defaultTextForm(
        {required TextEditingController controller,
        required TextInputType type,
        var onSubmit,
        var onChanged,
        var onTap,
        var validate,
        String? label,
        String? hint,
        // IconData prefix,
        IconData? suffix,
        var suffixPressed,
        bool isPassword = false}) =>
    TextFormField(
      validator: validate,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      obscureText: isPassword,
      onTap: onTap,
      decoration: InputDecoration(
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
                icon: Icon(
                  suffix,
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
      ),
    );
