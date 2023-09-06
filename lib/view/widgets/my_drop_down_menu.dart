import 'package:contractor/constants/colors.dart';
import 'package:contractor/logic/controllers/date_time_picker_controller.dart';
import 'package:contractor/logic/controllers/invoicer_controller.dart';
import 'package:contractor/view/widgets/my_text.dart';
import 'package:contractor/view/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

final controller = Get.put(InvoiceController());

class DateDropDownMenu extends StatelessWidget {
  const DateDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvoiceController>(builder: (controller) {
      return Container(
        height: 50,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(.3)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
              onChanged: (
                item,
              ) {
                controller.dateSelect = item;
                if (controller.dateSelect == "Custom") {
                  controller.addWidgetDate(myWidgetDate[0]);
                } else {
                  controller.myDateWidget.remove(myWidgetDate[0]);
                }

                controller.update();
              },
              value: controller.dateSelect,
              items: controller.dateList
                  .map((item) => DropdownMenuItem(
                      value: item,
                      child: MyText(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: mainColor,
                          underLine: TextDecoration.none,
                          text: item,
                          fontFamily: "Myriad")))
                  .toList()),
        ),
      );
    });
  }
}

List<Widget> myWidgetDate = [
  MyTextFormField(validator: () {}, hintText: "Custom Date")
];

class PayDropDownMenu extends StatelessWidget {
  final controller = Get.put(InvoiceController());

  PayDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvoiceController>(builder: (controller) {
      return Container(
        height: 50,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(.3)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
              onChanged: (
                item,
              ) {
                controller.paySelect = item;
                if (controller.paySelect == "Custom") {
                  controller.addWidgetPay(myWidgetPay[0]);
                } else {
                  controller.myPayWidget.remove(myWidgetPay[0]);
                }

                controller.update();
              },
              value: controller.paySelect,
              items: controller.payList
                  .map((item) => DropdownMenuItem(
                      value: item,
                      child: MyText(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: mainColor,
                          underLine: TextDecoration.none,
                          text: item,
                          fontFamily: "Myriad")))
                  .toList()),
        ),
      );
    });
  }
}

List<Widget> myWidgetPay = [
  GetBuilder<DateTimePickerController>(
      init: DateTimePickerController(),
      builder: ((dateController) {
        return MyTextFormFieldWithDatePicker(
          validator: () {},
          hintText: DateFormat("dd-MM-yyyy")
              .format(dateController.date.value)
              .toString(),
          onPressed: () {
            /* 
            DateTime? pickedDate = await showDatePicker(
                context: Get.context!,
                initialDate: dateController.date.value,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100));
            if (pickedDate != null && pickedDate != dateController.date.value) {
              dateController.date.value = pickedDate;
            } */
          },
        );
      }))
];
