// ignore_for_file: file_names, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, unused_local_variable, avoid_unnecessary_containers

import 'package:contractor/view/screens/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'home_screen.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

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
            txt: "Support  ",
            statue: FontWeight.w700,
            fontFamily: "Arial",
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 30, top: 16, right: 16, bottom: 16),
          color: Color.fromRGBO(237, 237, 237, 1),
          child: ListView(
            children: [
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_view(
                        txt: "Support Chat",
                        statue: FontWeight.w700,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 3,
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
                    padding: const EdgeInsets.only(top: 1, bottom: 20),
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
                height: 8,
              ),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(0, 0, 0, 0.5),
                height: 8,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_view(
                        txt: "Help center",
                        statue: FontWeight.w700,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 3,
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
                    padding: const EdgeInsets.only(top: 1, bottom: 20),
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
                height: 8,
              ),
              Divider(
                thickness: 1,
                color: Color.fromRGBO(0, 0, 0, 0.5),
                height: 8,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_view(
                        txt: "Help Center on Youtube",
                        statue: FontWeight.w700,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 3,
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
                    padding: const EdgeInsets.only(top: 1, bottom: 20),
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
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
