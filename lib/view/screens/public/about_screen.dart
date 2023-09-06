// ignore_for_file: file_names, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, unused_local_variable

import 'package:contractor/view/screens/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'home_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(1, 41, 57, 1),
        centerTitle: true,
        toolbarHeight: 102,
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(left: 295, top: 66.79),
            child: IconButton(
              onPressed: () {
                Get.to(HomeScreen());
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          centerTitle: true,
          title: Text_view(
            txt: "About",
            statue: FontWeight.w700,
            fontFamily: "Arial",
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 33, top: 35, right: 15),
          child: ListView(
            children: [
              // SizedBox(
              //   height: 35,
              // ),
              Center(
                child: Text_view(
                  txt: "Contractor Solution Information",
                  statue: FontWeight.w700,
                  fontFamily: "Myriad",
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text_view(
                    txt: "App version",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "v2.2.1 (1634443456) id user",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "Email address",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "jhone@gmail.com",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "Account time",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "Asia/ amman",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "March 31,2023 at 13:30",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "Device",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text_view(
                    txt: "Nonor Hncma-Q (Android11)",
                    statue: FontWeight.w400,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_view(
                        txt: "Privacy policy",
                        statue: FontWeight.w700,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text_view(
                        txt: "get support from out team",
                        statue: FontWeight.w400,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.rotate(
                          angle: -1 * math.pi / 4,
                          child: Icon(
                            Icons.link_rounded,
                            size: 30,
                            color: Color.fromRGBO(125, 176, 14, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(0, 0, 0, 0.5),
                height: 11,
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_view(
                        txt: "Terms of service",
                        statue: FontWeight.w700,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text_view(
                        txt: "Read articies about every feature in invoicer",
                        statue: FontWeight.w400,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.rotate(
                          angle: -1 * math.pi / 4,
                          child: Icon(
                            Icons.link_rounded,
                            size: 30,
                            color: Color.fromRGBO(125, 176, 14, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
