import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../logic/controllers/job_controller.dart';
import '../my_button.dart';
import '../my_text.dart';
import '../my_text_form_field.dart';

final controller = Get.put(JobController());

buildColumnJob(String clientName) {
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
              controller.myClientJob
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

class DropDownMenuJobWork extends StatelessWidget {
  const DropDownMenuJobWork({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(builder: (controller) {
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
                controller.jobSelect = item;
                controller.update();
              },
              value: controller.jobSelect,
              items: controller.jobList
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

buildMaterialJobColumn(String materialName) {
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
              controller.myMaterialJob
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

class DropDownMenuJobTeam extends StatelessWidget {
  const DropDownMenuJobTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(builder: (controller) {
      return Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(.3)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
              onChanged: (
                item,
              ) {
                controller.teamSelect = item;
                controller.update();
              },
              value: controller.teamSelect,
              items: controller.teamList
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

class JobScreenBody extends StatelessWidget {
  const JobScreenBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final JobController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: MyText(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: mainColor,
            underLine: TextDecoration.none,
            text: "Job information",
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
            text: "Service for",
            fontFamily: "Myriad"),
      ),
      const SizedBox(
        height: 15,
      ),
      MyButton(
        color: mainColor,
        function: () {
          controller.getJobClientBottomSheet();
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
      MyTextFormField(validator: () {}, hintText: "Job title"),
      const SizedBox(height: 5),
      MyTextFormField(validator: () {}, hintText: "Instructions"),
      const SizedBox(height: 10),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: MyText(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: mainColor,
            underLine: TextDecoration.none,
            text: "Work",
            fontFamily: "Myriad"),
      ),
      const SizedBox(
        height: 5,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: DropDownMenuJobWork(),
      ),
      const SizedBox(height: 15),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: MyText(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: mainColor,
            underLine: TextDecoration.none,
            text: "Job",
            fontFamily: "Myriad"),
      ),
      const SizedBox(
        height: 5,
      ),
      MyButton(
        color: mainColor,
        function: () {
          controller.getJobMaterialBottomSheet();
        },
        widget: const MyText(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            underLine: TextDecoration.none,
            text: "Line Items",
            fontFamily: "Myriad"),
        addColor: secondColor,
      ),
      Obx(() {
        return controller.checkMaterialsJob();
      }),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: secondColor.withOpacity(.7)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      MyText(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: mainColor,
                          underLine: TextDecoration.underline,
                          text: "Subtotal",
                          fontFamily: "Myriad"),
                      Spacer(),
                      MyText(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: mainColor,
                          underLine: TextDecoration.none,
                          text: "\$0.00",
                          fontFamily: "Myriad")
                    ],
                  ),
                  const MyText(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: mainColor,
                      underLine: TextDecoration.underline,
                      text: "Schedule",
                      fontFamily: "Myriad")
                ]),
          ),
        ),
      ),
      const SizedBox(height: 10),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: MyText(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: mainColor,
            underLine: TextDecoration.none,
            text: "Team",
            fontFamily: "Myriad"),
      ),
      const SizedBox(
        height: 5,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: DropDownMenuJobTeam(),
      )
    ]);
  }
}
