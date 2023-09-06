// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_types_as_parameter_names, unused_element

import 'package:contractor/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/fonts.dart';
import '../main_view.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({super.key});
  final MyDateController myDateController = Get.put(MyDateController());
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
            underLine: TextDecoration.none,
            text: "New request",
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: MyText(
                underLine: TextDecoration.none,
                text: "Request information for",
                fontWeight: FontWeight.w700,
                fontFamily: myriad,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                
              },
              minWidth: 393,
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
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 51, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "request title",
                      contentPadding: EdgeInsets.zero,
                      labelStyle: TextStyle(
                        fontFamily: "Myriad",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  MyText(
                    underLine: TextDecoration.none,
                    text: "Request from service Details",
                    fontWeight: FontWeight.w700,
                    fontFamily: myriad,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: "Answer",
                      contentPadding: EdgeInsets.zero,
                      helperText:
                          "please provide as much information as you can",
                      labelStyle: TextStyle(
                        fontFamily: "Myriad",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  MyText(
                    underLine: TextDecoration.none,
                    text: "Schedule an appintment",
                    fontWeight: FontWeight.w600,
                    fontFamily: myriad,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyText(
                    underLine: TextDecoration.none,
                    text: "if available, which day works for you? ",
                    fontWeight: FontWeight.w400,
                    fontFamily: myriad,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Date",
                      contentPadding: EdgeInsets.zero,
                      suffixIcon: IconButton(
                        onPressed: () => myDateController.selectDate(context),
                        icon: Icon(
                          Icons.date_range_outlined,
                          color: Colors.black,
                        ),
                      ),
                      labelStyle: TextStyle(
                        fontFamily: "Myriad",
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
                    text: "What is another day works for you?",
                    fontWeight: FontWeight.w400,
                    fontFamily: myriad,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Date",
                      contentPadding: EdgeInsets.zero,
                      suffixIcon: IconButton(
                        onPressed: () => myDateController.selectDate(context),
                        icon: Icon(
                          Icons.date_range_outlined,
                          color: Colors.black,
                        ),
                      ),
                      labelStyle: TextStyle(
                        fontFamily: "Myriad",
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
                    text: "What are your preferred arrival times? ",
                    fontWeight: FontWeight.w400,
                    fontFamily: myriad,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            // height: 17,
                            width: 17,
                            child: CheckBox(
                              Value: PowerButton.on,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          MyText(
                            underLine: TextDecoration.none,
                            text: "Any time",
                            fontWeight: FontWeight.w400,
                            fontFamily: myriad,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      Row(
                        children: [
                          SizedBox(
                              // height: 17,
                              width: 17,
                              child: CheckBox(
                                Value: PowerButton.on,
                              )),
                          SizedBox(
                            width: 22,
                          ),
                          MyText(
                            underLine: TextDecoration.none,
                            text: "Morning",
                            fontWeight: FontWeight.w400,
                            fontFamily: myriad,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            // height: 17,
                            width: 17,
                            child: CheckBox(
                              Value: PowerButton.off,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          MyText(
                            underLine: TextDecoration.none,
                            text: "Afternoon",
                            fontWeight: FontWeight.w400,
                            fontFamily: myriad,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            // height: 17,
                            width: 17,
                            child: CheckBox(
                              Value: PowerButton.off,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          MyText(
                            underLine: TextDecoration.none,
                            text: "Evening",
                            fontWeight: FontWeight.w400,
                            fontFamily: myriad,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 29,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: MyText(
                          underLine: TextDecoration.none,
                          text: "Assessment details",
                          fontWeight: FontWeight.w700,
                          fontFamily: myriad,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 393,
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
                    text: "Schedule",
                    fontWeight: FontWeight.w700,
                    fontFamily: arial,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 52,
                right: 51,
                bottom: 156,
              ),
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
                  text: "Schedule",
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
    );
  }
  // body:
}
