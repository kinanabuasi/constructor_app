import 'package:contractor/view/screens/public/main_contractor_screen.dart';
import 'package:contractor/view/screens/public/schedule_screen.dart';
import 'package:contractor/view/screens/public/search_screen.dart';
import 'package:contractor/view/screens/public/time_sheet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';

class HomeController extends GetxController {
  PageController pageTaskController = PageController(viewportFraction: 1);
  PageController pageProjectController = PageController(viewportFraction: 1);
  PageController pageInvoiceController = PageController(viewportFraction: 1);
  double height = 30;

  var isDrawerOpen = false;
  static final HomeController singleton = HomeController._internal();

  factory HomeController() {
    return singleton;
  }

  HomeController._internal();

  void toggleDrawer() {
    isDrawerOpen = !isDrawerOpen;
    update();
  }

  void barValue(double value) {
    height = value;
    update();
  }

  int selectedIndex = 2;

  List pages = [
    const ScheduleScreen(),
    const SearchScreen(),
    MainContractorScreen(),
    const TimeSheetScreen(),
    SpeedDial(
      //icon: Icons.add,
      //animatedIcon: AnimatedIcons.add_event,
      //activeIcon: Icons.access_time_rounded,
      activeChild: appIcon(
          icon: AppIcons.activeAdd, iconColor: Colors.white, height: 30),
      backgroundColor: secondColor,
      overlayColor: Colors.black,
      overlayOpacity: 0.4,
      children: [
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.task,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: mainColor,
          label: "task",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: mainColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.quote,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: quoteColor,
          label: "Quote",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: quoteColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.request,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: requistColor,
          label: "request",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: requistColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.job,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: jobColor,
          label: "job",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: jobColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.invoice,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: invoiceColor,
          label: "invoice",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: invoiceColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.expense,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: expenseColor,
          label: "expense",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: expenseColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.client,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: clientColor,
          label: "client",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: clientColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.employee,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: employeeColor,
          label: "employee",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: employeeColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.item,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: itemColor,
          label: "item",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: itemColor.withOpacity(0.5),
        ),
        SpeedDialChild(
          child: appIcon(
            icon: AppIcons.project,
            iconColor: Colors.white,
            height: 25,
          ),
          backgroundColor: projectColor,
          label: "project",
          labelStyle: const TextStyle(color: Colors.white),
          labelBackgroundColor: projectColor.withOpacity(0.5),
        ),
      ],
      //icon: Icons.add,
      //animatedIcon: AnimatedIcons.add_event,
      //activeIcon: Icons.access_time_rounded,
      child: const Icon(
        Icons.add,
        size: 40,
        color: Colors.white,
      ),
    ),
  ];
  void onTapNav(int index) {
    selectedIndex = index;
    update();
  }

  var currPageValue = 0.0;
  double scaleFactor = 0.8;
}
