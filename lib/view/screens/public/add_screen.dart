import 'package:contractor/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: const Text("Add"),
              leading: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.homeScreen);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              backgroundColor: mainColor),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: 3,
                          color: requistColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Requests",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: mainColor,
                                      fontFamily: "Ariel"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 360,
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
                              ],
                            ),
                            const Text(
                              "Create Requests",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: mainColor,
                                  fontFamily: "Ariel"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: 3,
                          color: quoteColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Quotes",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: mainColor,
                                      fontFamily: "Ariel"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 360,
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
                              ],
                            ),
                            const Text(
                              "Create Quotes",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: quoteColor,
                                  fontFamily: "Ariel"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: 3,
                          color: jobColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Jobs",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: mainColor,
                                      fontFamily: "Ariel"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 360,
                                  child: Text(
                                    "Choose a client, schedule the work and assign in to your team with only a few clicks",
                                    maxLines: 3,
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: mainColor,
                                      fontFamily: "Myriad",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Create a job",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: jobColor,
                                  fontFamily: "Ariel"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 7.5,
                          width: 3,
                          color: invoiceColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Invoices",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: mainColor,
                                      fontFamily: "Ariel"),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 360,
                                  child: Text(
                                    "Turn a completed job into a professional invoices or create one from scratch",
                                    maxLines: 3,
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: mainColor,
                                      fontFamily: "Myriad",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Create Invoice",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: invoiceColor,
                                  fontFamily: "Ariel"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          )),
    );
  }
}
