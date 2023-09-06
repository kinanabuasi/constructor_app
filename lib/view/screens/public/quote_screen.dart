// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_types_as_parameter_names, unused_element, camel_case_types

import 'package:contractor/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/fonts.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        backgroundColor: Color.fromRGBO(1, 41, 57, 1),
        centerTitle: true,
        toolbarHeight: 102,
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(left: 295, top: 66.79),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          centerTitle: true,
          title: MyText(
            text: "New quote",
            underLine: TextDecoration.none,
            fontWeight: FontWeight.w700,
            fontFamily: arial,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 28),
              child: MyText(
                underLine: TextDecoration.none,
                text: "Service for",
                fontWeight: FontWeight.w700,
                fontFamily: myriad,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: MaterialButton(
                onPressed: () {},
                height: 51,
                color: Color.fromRGBO(1, 41, 57, 1),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 29,
                      color: Color.fromRGBO(124, 176, 65, 1),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    MyText(
                      underLine: TextDecoration.none,
                      text: "Client",
                      fontWeight: FontWeight.w700,
                      fontFamily: arial,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 32,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 29, right: 48, top: 37, bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    underLine: TextDecoration.none,
                    text: "Overview",
                    fontWeight: FontWeight.w600,
                    fontFamily: "Myriad",
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Job title",
                      contentPadding: EdgeInsets.zero,
                      labelStyle: TextStyle(
                        fontFamily: myriad,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyText(
                    underLine: TextDecoration.none,
                    text: "Work ",
                    fontWeight: FontWeight.w600,
                    fontFamily: myriad,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      minWidth: 290,
                      height: 51,
                      color: Color.fromRGBO(1, 41, 57, 1),
                      child: MyText(
                        underLine: TextDecoration.none,
                        text: "Line items",
                        fontWeight: FontWeight.w700,
                        fontFamily: arial,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(246, 246, 246, 1),
                    ),
                    width: 400,
                    height: 228,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 59,
                        left: 27,
                        right: 69,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                underLine: TextDecoration.none,
                                text: "Subtotal",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "Discount",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "TAX",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "Total",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "Required deposit",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 89,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MyText(
                                underLine: TextDecoration.none,
                                text: "\$0.00",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "\$0.00",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "\$0.00",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "\$0.00",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              MyText(
                                underLine: TextDecoration.none,
                                text: "\$0.00",
                                fontWeight: FontWeight.w400,
                                fontFamily: myriad,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28, bottom: 100),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      minWidth: 290,
                      height: 51,
                      color: Color.fromRGBO(124, 176, 65, 1),
                      child: MyText(
                        underLine: TextDecoration.none,
                        text: "Client message",
                        fontWeight: FontWeight.w700,
                        fontFamily: "Arial",
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
