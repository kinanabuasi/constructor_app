import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../logic/controllers/invoicer_controller.dart';
import '../my_button.dart';
import '../my_drop_down_menu.dart';
import '../my_text.dart';
import '../my_text_form_field.dart';

final controller = Get.put(InvoiceController());

buildColumn(String clientName) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          MyText(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: secondColor,
              underLine: TextDecoration.none,
              text: clientName,
              fontFamily: "Myriad"),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.delete,
              color: mainColor,
            ),
            onPressed: () {
              controller.myClient
                  .removeWhere((element) => element == clientName);
            },
          )
        ],
      ),
      const SizedBox(height: 5),
      const Divider(
        color: mainColor,
        thickness: 2,
      )
    ]),
  );
}

buildMaterialColumn(String materialName) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          MyText(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: secondColor,
              underLine: TextDecoration.none,
              text: materialName,
              fontFamily: "Myriad"),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.delete,
              color: mainColor,
            ),
            onPressed: () {
              controller.myMaterial
                  .removeWhere((element) => element == materialName);
            },
          )
        ],
      ),
      const SizedBox(height: 5),
      const Divider(
        color: mainColor,
        thickness: 2,
      )
    ]),
  );
}

class InvoiceScreenBody extends StatelessWidget {
  const InvoiceScreenBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InvoiceController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: MyText(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: mainColor,
              underLine: TextDecoration.none,
              text: "Invoice information",
              fontFamily: "Arial"),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: MyText(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: "Billed to",
              fontFamily: "Myriad"),
        ),
        const SizedBox(
          height: 15,
        ),
        MyButton(
          color: mainColor,
          function: () {
            controller.getInvoiceClientBottomSheet();
          },
          widget: const MyText(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underLine: TextDecoration.none,
              text: "Client",
              fontFamily: "Myriad"),
          addColor: secondColor,
        ),
        Obx(() {
          return controller.checkClient();
        }),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: MyText(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: "Overview",
              fontFamily: "Myriad"),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: MyText(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: "Invoice title",
              fontFamily: "Myriad"),
        ),
        MyTextFormField(
          validator: () {},
          hintText: "For Services rendered",
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: MyText(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: "Issued",
              fontFamily: "Myriad"),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: DateDropDownMenu(),
        ),
        Obx(() {
          return controller.checkWidgetDate();
        }),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: MyText(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: mainColor,
              underLine: TextDecoration.none,
              text: "Payment",
              fontFamily: "Myriad"),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: PayDropDownMenu(),
        ),
        Obx(() {
          return controller.checkWidgetPay();
        }),
        const SizedBox(
          height: 20,
        ),
        MyButton(
            color: mainColor,
            addColor: secondColor,
            function: () {
              controller.getInvoiceMaterialBottomSheet();
            },
            widget: const MyText(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                underLine: TextDecoration.none,
                text: "Line Items",
                fontFamily: "Myriad")),
        Obx(() {
          return controller.checkMaterials();
        }),
        MyButton(
          color: mainColor,
          function: () {},
          widget: const MyText(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underLine: TextDecoration.none,
              text: "Client Message",
              fontFamily: "Myriad"),
          addColor: secondColor,
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: MyAuthButton(
              color: secondColor,
              function: () {},
              widget: const MyText(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  underLine: TextDecoration.none,
                  text: "Save",
                  fontFamily: "Myriad")),
        )
      ],
    );
  }
}
