import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  static const String notification = "assets/images/notification.svg";
  static const String notifications = "assets/images/notifications.svg";
  static const String add = "assets/images/add.svg";
  static const String date = "assets/images/date.svg";
  static const String eye = "assets/images/eye.svg";
  static const String home = "assets/images/home.svg";
  static const String location = "assets/images/location.svg";
  static const String search = "assets/images/search.svg";
  static const String schedual = "assets/images/schedual.svg";
  static const String sitting = "assets/images/sitting.svg";
  static const String sittings = "assets/images/sittings.svg";
  static const String timesheet = "assets/images/timesheet.svg";
  static const String google = "assets/images/google.svg";
  static const String calender = "assets/images/calender.svg";
  static const String plus = "assets/images/plus.svg";
  static const String activeAdd = "assets/images/activeAdd.svg";

  static const String project = "assets/images/project.svg";
  static const String employee = "assets/images/employe.svg";
  static const String client = "assets/images/client.svg";
  static const String expense = "assets/images/expense.svg";
  static const String pen = "assets/images/pen.svg";
  static const String flag = "assets/images/flag.svg";
  static const String item = "assets/images/item.svg";
  static const String job = "assets/images/job.svg";
  static const String invoice = "assets/images/invoice.svg";
  static const String request = "assets/images/request.svg";
  static const String quote = "assets/images/quote.svg";
  static const String task = "assets/images/task.svg";
}

Widget appIcon({
  required String icon,
  double height = 22,
  required Color iconColor,
}) =>
    SvgPicture.asset(
      icon,
      color: iconColor,
      height: height,
    );
