// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, unused_import, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';
import '../../../scheduling_widgets.dart';
// import 'package:calendar_strip/calendar_strip.dart';
import 'forms_widget.dart';

class schedule_screen extends StatelessWidget {
  const schedule_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 123.7,top: 132.9,right: 1253.7),
          //   child: Date_strip(),
          // ),
          SizedBox(
            height: 110.1,
          ),
          Text_view(
                    txt: "All Form",
                    statue: FontWeight.w400,
                    fontFamily: arial,
                    color: Colors.black,
                    fontSize: 57,
                  ),




        ],
      ),
    );
  }
}