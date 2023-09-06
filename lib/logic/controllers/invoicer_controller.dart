// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../view/widgets/invoice_widget/invoice_screen_widget.dart';
import '../../view/widgets/my_drop_down_menu.dart';
import '../../view/widgets/my_text.dart';

class InvoiceController extends GetxController {
  final RxList<String> myClient = RxList();
  final RxList<String> myMaterial = RxList();
  final RxList<Widget> myDateWidget = RxList();
  final RxList<Widget> myPayWidget = RxList();

  /* void addToList(String string) {
    myClient.add(string);
    update();
  } */

  void addWidgetDate(Widget widget) {
    myDateWidget.add(widget);
    update();
  }

  void addWidgetPay(Widget widget) {
    myPayWidget.add(widget);
    update();
  }

  void addMaterial(String string) {
    myMaterial.add(string);
    update();
  }

  late String? dateSelect = dateList[0];
  final List<String> dateList = ["Date sent", "Custom"];

  Widget checkWidgetDate() {
    if (myDateWidget.isEmpty) {
      return const Text("");
    } else {
      return myWidgetDate[0];
    }
  }

  Widget checkClient() {
    if (myClient.isEmpty) {
      return const Text("");
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildColumn(myClient[index]);
        },
        itemCount: 1,
      );
    }
  }

  late String? paySelect = payList[1];
  final List<String> payList = [
    "Upon receipt",
    "Net 30",
    "Net 20",
    "Net 10",
    "Net 45",
    "Custom"
  ];

  Widget checkWidgetPay() {
    if (myPayWidget.isEmpty) {
      return const Text("");
    } else {
      return myWidgetPay[0];
    }
  }

  Widget checkMaterials() {
    if (myMaterial.isEmpty) {
      return const Text("");
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildMaterialColumn(myMaterial[index]);
        },
        itemCount: myMaterial.length,
      );
    }
  }

  Future getInvoiceMaterialBottomSheet() {
    return Get.bottomSheet(
        ListView.separated(
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  if (myMaterial.isEmpty) {
                    myMaterial.add(materials[i]);
                  } else {
                    print("");
                  }
                },
                title: MyText(
                  color: mainColor,
                  fontFamily: myriad,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  underLine: TextDecoration.none,
                  text: materials[i],
                ),
                trailing: const Icon(Icons.construction, color: secondColor),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 2, color: mainColor);
            },
            itemCount: materials.length),
        backgroundColor: Colors.white);
  }

  Future getInvoiceClientBottomSheet() {
    return Get.bottomSheet(
        ListView.separated(
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  if (myClient.isEmpty) {
                    myClient.add(clients[i]);
                  } else {
                    print("");
                  }
                },
                title: MyText(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    underLine: TextDecoration.none,
                    text: clients[i],
                    fontFamily: myriad),
                trailing: const Icon(Icons.person, color: secondColor),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 2, color: mainColor);
            },
            itemCount: clients.length),
        backgroundColor: Colors.white);
  }
}

List<String> materials = [
  "Doors",
  "Windows",
  "Walls",
  "Ground",
  "Colors",
  "Bed rooms"
];

List<String> clients = [
  "yamen",
  "oudai",
  "osama",
  "kinan",
  "mohammed",
  "yazan"
];
