// ignore_for_file: non_constant_identifier_names

import 'package:contractor/logic/controllers/main_contractor_controller.dart';
import 'package:contractor/view/screens/public/notification_screen.dart';
import 'package:contractor/view/screens/public/quote_screen.dart';
import 'package:contractor/view/screens/public/request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import 'invoice_screen.dart';
import 'job_screen.dart';

class MainContractorScreen extends StatelessWidget {
  final contractor = Get.put(MainContractorController());

  MainContractorController homeContoller = Get.put(MainContractorController());

  MainContractorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainContractorController>(builder: (contracor) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            automaticallyImplyLeading: false,
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(NotificationScreen());
                              },
                              child: appIcon(
                                  icon: AppIcons.notifications,
                                  iconColor: Colors.white),
                            ),
                            InkWell(
                              onTap: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              child: appIcon(
                                  icon: AppIcons.sittings,
                                  iconColor: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 18,
                      ),
                      child: Text(
                        "Hi Hisham",
                        style: TextStyle(
                            color: secondColor,
                            fontFamily: "Myriad",
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You have 10 days remaining in your free trial ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Myriad",
                                fontSize: 10),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: secondColor),
                                height: 30,
                                width: MediaQuery.of(context).size.width / 4,
                                child: Center(
                                  child: Text(
                                    "Subscribe",
                                    style: TextStyle(
                                        fontFamily: "Myriad",
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 24,
                            top: MediaQuery.of(context).size.height / 80),
                        child: Text(
                          "Sat, March 29th",
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              color: secondColor,
                              fontFamily: "Myriad"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 24,
                            right: MediaQuery.of(context).size.width / 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "No visits scheduled today",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Myriad"),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: secondColor),
                                height: MediaQuery.of(context).size.height / 25,
                                width: MediaQuery.of(context).size.width / 3,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Schedule A Job",
                                      // textAlign: TextAlign.end,
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              75,
                                          color: Colors.white,
                                          fontFamily: "Ariel"),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    appIcon(
                                        icon: AppIcons.pen,
                                        iconColor: Colors.white,
                                        height: 16),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Task Today",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: mainColor,
                                    fontFamily: "Ariel"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 15.0),
                              child: Text(
                                "View all",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: mainColor,
                                    fontFamily: "Ariel"),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 7.9,
                          width: MediaQuery.of(context)
                              .size
                              .width, // double.infinity,
                          child: PageView.builder(
                              controller: contracor.pageTaskController,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, position) {
                                if (position == 3) {
                                  // Check if we're rendering the AddCard widget
                                  return AddCard(context);
                                } else {
                                  return TaskCard(context, position);
                                }
                              }),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SmoothPageIndicator(
                            controller: contracor.pageTaskController,
                            count: 4,
                            effect: ScrollingDotsEffect(
                              fixedCenter: true,
                              activeDotColor: mainColor,
                              dotColor: secondColor,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, bottom: 10),
                              child: Text(
                                "Project Active",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: mainColor,
                                    fontFamily: "Ariel"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  top: 15.0,
                                  bottom: 10),
                              child: Text(
                                "View all",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: mainColor,
                                    fontFamily: "Ariel"),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(height: 13,),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context)
                              .size
                              .width, // double.infinity,
                          child: PageView.builder(
                              controller: contracor.pageProjectController,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, position) {
                                if (position == 3) {
                                  // Check if we're rendering the AddCard widget
                                  return AddCard(context);
                                } else {
                                  return ProjectCard(context, position);
                                }
                              }),
                        ),
                        SmoothPageIndicator(
                            controller: contracor.pageProjectController,
                            count: 4,
                            effect: ScrollingDotsEffect(
                              fixedCenter: true,
                              activeDotColor: mainColor,
                              dotColor: secondColor,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                              ),
                              child: Text(
                                "Invoice Active",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: mainColor,
                                    fontFamily: "Ariel"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  top: 15.0,
                                  bottom: 10),
                              child: Text(
                                "View all",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: mainColor,
                                    fontFamily: "Ariel"),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context)
                              .size
                              .width, // double.infinity,
                          child: PageView.builder(
                              controller: contracor.pageInvoiceController,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, position) {
                                if (position == 3) {
                                  // Check if we're rendering the AddCard widget
                                  return AddCard(context);
                                } else {
                                  return InvoiceCard(context, position);
                                }
                              }),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SmoothPageIndicator(
                            controller: contracor.pageInvoiceController,
                            count: 4,
                            effect: ScrollingDotsEffect(
                              fixedCenter: true,
                              activeDotColor: mainColor,
                              dotColor: secondColor,
                            )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                    Container(
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                appIcon(
                                    icon: AppIcons.request,
                                    iconColor: requistColor),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 30,
                                ),
                                Text(
                                  "Requests",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: mainColor,
                                      fontFamily: "Ariel"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 9.5,
                                  width: 3,
                                  color: requistColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Text(
                                        "New work that comes up in-person,on the phone, or online will show up",
                                        maxLines: 2,
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: mainColor,
                                          fontFamily: "Myriad",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25,
                                    ),
                                    Row(
                                      children: [
                                        Container(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.2),
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.to(RequestScreen());
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: requistColor),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    25,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: Center(
                                                  child: Text(
                                                    "Create Requist",
                                                    style: TextStyle(
                                                        fontFamily: "Myriad",
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                    Container(
                      height: MediaQuery.of(context).size.height / 5.2,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                appIcon(
                                    icon: AppIcons.quote,
                                    iconColor: quoteColor),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 30,
                                ),
                                Text(
                                  "Quotes",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: quoteColor,
                                      fontFamily: "Ariel"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 9.5,
                                  width: 3,
                                  color: quoteColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Text(
                                        "Create and send customized quotes to youre clints and get notified right when they’re approved",
                                        maxLines: 3,
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: mainColor,
                                          fontFamily: "Myriad",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25,
                                    ),
                                    Row(
                                      children: [
                                        Container(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.2),
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.to(QuoteScreen());
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: quoteColor),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    25,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: Center(
                                                  child: Text(
                                                    "Create Quotes",
                                                    style: TextStyle(
                                                        fontFamily: "Myriad",
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                    Container(
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                appIcon(
                                    icon: AppIcons.job, iconColor: jobColor),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 30,
                                ),
                                Text(
                                  "Jobs",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: jobColor,
                                      fontFamily: "Ariel"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 9.5,
                                  width: 3,
                                  color: jobColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Text(
                                        "Choose a client, schedule the work and assign in to your team with only a few clicks",
                                        maxLines: 2,
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: mainColor,
                                          fontFamily: "Myriad",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25,
                                    ),
                                    Row(
                                      children: [
                                        Container(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.2),
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.to(JobScreen());
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: jobColor),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    25,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: Center(
                                                  child: Text(
                                                    "Create a Job",
                                                    style: TextStyle(
                                                        fontFamily: "Myriad",
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                    Container(
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                appIcon(
                                    icon: AppIcons.invoice,
                                    iconColor: invoiceColor),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 30,
                                ),
                                Text(
                                  "Invoices",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: invoiceColor,
                                      fontFamily: "Ariel"),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 9.5,
                                  width: 3,
                                  color: invoiceColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Text(
                                        "Turn a completed job into a professional invoices or create one from scratch",
                                        maxLines: 2,
                                        // textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: mainColor,
                                          fontFamily: "Myriad",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              25,
                                    ),
                                    Row(
                                      children: [
                                        Container(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.2),
                                          child: GestureDetector(
                                            onTap: () {
                                              Get.to(InvoiceScreen());
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: invoiceColor),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    25,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: Center(
                                                  child: Text(
                                                    "Create Invoices",
                                                    style: TextStyle(
                                                        fontFamily: "Myriad",
                                                        fontSize: 20,
                                                        color: Colors.white),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget TaskCard(
    BuildContext context,
    int postion,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 2.2,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
        boxShadow: [
          BoxShadow(
              color: Color(0xFFe8e8e8), blurRadius: 5.0, offset: Offset(0, 5)),
          //      BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
          //     BoxShadow(color: Colors.white, offset: Offset(5, 0)),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                appIcon(
                    icon: AppIcons.flag, iconColor: Colors.black, height: 15),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'etrevago ltd',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Myriad",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                appIcon(
                    icon: AppIcons.location,
                    iconColor: Colors.black,
                    height: 17),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Jordan - irbid 21110',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Myriad",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                appIcon(
                    icon: AppIcons.timesheet,
                    iconColor: Colors.black,
                    height: 17),
                SizedBox(
                  width: 7,
                ),
                Text(
                  '11:00 am - 11:00 pm',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Myriad",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/images/eye.svg",
                  height: 10,
                  color: secondColor,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'View Task',
                  style: TextStyle(color: secondColor, fontSize: 9),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget InvoiceCard(
    BuildContext context,
    int postion,
  ) {
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 2.2,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
        boxShadow: [
          BoxShadow(
              color: Color(0xFFe8e8e8), blurRadius: 5.0, offset: Offset(0, 5)),
          //      BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
          //     BoxShadow(color: Colors.white, offset: Offset(5, 0)),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                appIcon(
                    icon: AppIcons.flag, iconColor: Colors.black, height: 17),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'etrevago ltd',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Myriad",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                appIcon(
                    icon: AppIcons.location,
                    iconColor: Colors.black,
                    height: 17),
                SizedBox(
                  width: 7,
                ),
                Text(
                  '250,000 USD',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Myriad",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                appIcon(
                    icon: AppIcons.timesheet,
                    iconColor: Colors.black,
                    height: 20),
                SizedBox(
                  width: 7,
                ),
                Text(
                  '11:00 am - 11:00 pm',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Myriad",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 1,
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/images/eye.svg",
                  height: 10,
                  color: secondColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'View Invoice',
                  style: TextStyle(color: secondColor, fontSize: 9),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget ProjectCard(
    BuildContext context,
    int postion,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 2.2,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
        boxShadow: [
          BoxShadow(
              color: Color(0xFFe8e8e8), blurRadius: 5.0, offset: Offset(0, 5)),
          //      BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
          //     BoxShadow(color: Colors.white, offset: Offset(5, 0)),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Project details',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    appIcon(
                        icon: AppIcons.flag,
                        iconColor: Colors.black,
                        height: 15),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'etrevago ltd',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Myriad",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: [
                    appIcon(
                      icon: AppIcons.location,
                      iconColor: Colors.black,
                      height: 17,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Jordan - irbid 21110',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Myriad",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: [
                    appIcon(
                        icon: AppIcons.timesheet,
                        iconColor: Colors.black,
                        height: 20),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      '11:00 am - 11:00 pm',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "Myriad",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
              ],
            ),
            // SizedBox(
            //   width: 20,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project details',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Slider(
                    max: 150,
                    min: 0,
                    activeColor: secondColor,
                    value: homeContoller.height,
                    onChanged: (value) {
                      homeContoller.barValue(value);
                    }),
                Row(
                  //mainAxisSize:MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    SvgPicture.asset(
                      "assets/images/eye.svg",
                      height: 10,
                      color: secondColor,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'View Project',
                      style: TextStyle(color: secondColor, fontSize: 9),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget AddCard(
    BuildContext context,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 2.3,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
        boxShadow: [
          BoxShadow(
              color: Color(0xFFe8e8e8), blurRadius: 5.0, offset: Offset(0, 5)),
          //      BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
          //     BoxShadow(color: Colors.white, offset: Offset(5, 0)),
        ],
      ),
      child: Center(
        child: Container(
          child: CircleAvatar(
            radius: 25,
            backgroundColor: card2Color,
            // padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: appIcon(
                icon: AppIcons.add, iconColor: Colors.white, height: 60),
          ),
        ),
      ),
    );
  }
}
