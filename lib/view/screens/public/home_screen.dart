import 'package:contractor/view/screens/public/client_screen.dart';
import 'package:contractor/view/screens/public/expense_screen.dart';
import 'package:contractor/view/screens/public/invoice_screen.dart';
import 'package:contractor/view/screens/public/job_screen.dart';
import 'package:contractor/view/screens/public/notification_screen.dart';
import 'package:contractor/view/screens/public/occupation_screen.dart';
import 'package:contractor/view/screens/public/quote_screen.dart';
import 'package:contractor/view/screens/public/request_screen.dart';
import 'package:contractor/view/screens/public/task_screen.dart';
import 'package:contractor/view/screens/public/work_group_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../logic/controllers/home_controller.dart';
import 'about_screen.dart';
import 'support_screen.dart';

class HomeScreen extends StatelessWidget {
  final homecontroller = Get.find<HomeController>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (home) {
      return SafeArea(
        child: Scaffold(
          body: home.pages[home.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: secondColor,
            unselectedItemColor: mainColor,
            backgroundColor: bottomNavColor,
            //selectedLabelStyle: TextStyle(color: AppColors.secondColor),
            //unselectedLabelStyle: TextStyle(color: AppColors.mainColor),
            currentIndex: home.selectedIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: home.onTapNav,
            items: [
              BottomNavigationBarItem(
                icon: appIcon(
                    icon: AppIcons.schedual,
                    iconColor:
                        home.selectedIndex == 0 ? secondColor : mainColor,
                    height: 35),
                label: 'schedule',
              ),
              BottomNavigationBarItem(
                icon: appIcon(
                    icon: AppIcons.search,
                    iconColor:
                        home.selectedIndex == 1 ? secondColor : mainColor,
                    height: 35),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: appIcon(
                    icon: AppIcons.home,
                    iconColor:
                        home.selectedIndex == 2 ? secondColor : mainColor,
                    height: 35),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: appIcon(
                    icon: AppIcons.timesheet,
                    iconColor:
                        home.selectedIndex == 3 ? secondColor : mainColor,
                    height: 35),
                label: 'Time Sheet',
              ),
              BottomNavigationBarItem(
                // backgroundColor: Colors.red,
                icon: SpeedDial(
                  //icon: Icons.add,
                  //animatedIcon: AnimatedIcons.add_event,
                  //activeIcon: Icons.access_time_rounded,
                  activeChild: appIcon(
                      icon: AppIcons.activeAdd,
                      iconColor: Colors.white,
                      height: 30),
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
                      onTap: () {
                        Get.to(TaskScreen());
                      },
                      labelBackgroundColor: mainColor.withOpacity(0.5),
                    ),
                    SpeedDialChild(
                      onTap: () {
                        Get.to(const QuoteScreen());
                      },
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
                      onTap: () {
                        Get.to(RequestScreen());
                      },
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
                      onTap: () {
                        Get.to(() => JobScreen());
                      },
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
                      onTap: () {
                        Get.to(() => InvoiceScreen());
                      },
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
                      onTap: () {
                        Get.to(ExpenseScreen());
                      },
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
                      onTap: () {
                        Get.to(ClientScreen());
                      },
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
                label: '',
              ),
            ],
          ),
          endDrawer: Drawer(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Color(0xFF00003C),
                    ),
                    title: const Text(
                      'Profile',
                      style: TextStyle(fontSize: 17, fontFamily: "Cairo"),
                    ),
                    onTap: () {
                      home.toggleDrawer();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.notification_important,
                      color: Color(0xFF001A47),
                    ),
                    title: const Text(
                      'notification',
                      style: TextStyle(fontSize: 17, fontFamily: "Cairo"),
                    ),
                    onTap: () {
                      Get.to(NotificationScreen());
                      home.toggleDrawer();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.message,
                      color: Color(0xFF001A47),
                    ),
                    title: const Text(
                      'Support',
                      style: TextStyle(fontSize: 17, fontFamily: "Cairo"),
                    ),
                    onTap: () {
                      Get.to(SupportScreen());
                      home.toggleDrawer();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.info_outline,
                      color: Color(0xFF001A47),
                    ),
                    title: const Text(
                      'About',
                      style: TextStyle(fontSize: 17, fontFamily: "Cairo"),
                    ),
                    onTap: () {
                      Get.to(AboutScreen());
                      home.toggleDrawer();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.group,
                      color: Color(0xFF001A47),
                    ),
                    title: const Text(
                      'Work Group',
                      style: TextStyle(fontSize: 17, fontFamily: "Cairo"),
                    ),
                    onTap: () {
                      Get.to(WorkGroupScreen());
                      home.toggleDrawer();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.info_outline,
                      color: Color(0xFF001A47),
                    ),
                    title: const Text(
                      'Occupation',
                      style: TextStyle(fontSize: 17, fontFamily: "Cairo"),
                    ),
                    onTap: () {
                      Get.to(OccupationScreen());
                      home.toggleDrawer();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
