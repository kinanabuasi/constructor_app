// ignore_for_file: avoid_print

import 'package:contractor/constants/colors.dart';
import 'package:contractor/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/fonts.dart';
import '../../view/widgets/job_widget/job_screen_widget.dart';

class JobController extends GetxController {
  final RxList<String> myClientJob = RxList();
  final RxList<String> myMaterialJob = RxList();

  late String? jobSelect = jobList[0];
  final List<String> jobList = ["Job forms", "Another type"];

  late String? teamSelect = teamList[0];
  final List<String> teamList = ["Etrevago", "Team name"];

  Widget checkClient() {
    if (myClientJob.isEmpty) {
      return const Text("");
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildColumnJob(myClientJob[index]);
        },
        itemCount: 1,
      );
    }
  }

  Widget checkMaterialsJob() {
    if (myMaterialJob.isEmpty) {
      return const Text("");
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildMaterialJobColumn(myMaterialJob[index]);
        },
        itemCount: myMaterialJob.length,
      );
    }
  }

  Future getJobClientBottomSheet() {
    return Get.bottomSheet(
        ListView.separated(
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  if (myClientJob.isEmpty) {
                    myClientJob.add(clientsJob[i]);
                  } else {
                    print("");
                  }
                },
                title: MyText(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    underLine: TextDecoration.none,
                    text: clientsJob[i],
                    fontFamily: myriad),
                trailing: const Icon(Icons.person, color: secondColor),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 2, color: mainColor);
            },
            itemCount: clientsJob.length),
        backgroundColor: Colors.white);
  }

  Future getJobMaterialBottomSheet() {
    return Get.bottomSheet(
        ListView.separated(
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  if (myMaterialJob.isEmpty) {
                    myMaterialJob.add(materialsJob[i]);
                  } else {
                    print("");
                  }
                },
                title: MyText(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                    underLine: TextDecoration.none,
                    text: materialsJob[i],
                    fontFamily: myriad),
                trailing: const Icon(Icons.construction, color: Colors.black),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 2, color: mainColor);
            },
            itemCount: materialsJob.length),
        backgroundColor: Colors.white);
  }
}

List<String> clientsJob = [
  "yamen",
  "oudai",
  "osama",
  "kinan",
  "mohammed",
  "yazan"
];

List<String> materialsJob = [
  "doors",
  "windows",
  "walls",
  "ground",
  "colors",
  "bed rooms"
];
