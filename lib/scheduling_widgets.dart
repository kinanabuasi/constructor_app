// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, prefer_const_constructors_in_immutables, camel_case_types, no_leading_underscores_for_local_identifiers, must_be_immutable, import_of_legacy_library_into_null_safe, avoid_unnecessary_containers, sort_child_properties_last, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:calendar_strip/calendar_strip.dart';

// class Date_strip extends StatelessWidget {
//   Date_strip({super.key});
//   // final String title;
//   DateTime startDate = DateTime.now().subtract(Duration(days: 2));
//   DateTime endDate = DateTime.now().add(Duration(days: 2));
//   DateTime selectedDate = DateTime.now().subtract(Duration(days: 2));
//   List<DateTime> markedDates = [
//     DateTime.now().subtract(Duration(days: 1)),
//     DateTime.now().subtract(Duration(days: 2)),
//     DateTime.now().add(Duration(days: 4))
//   ];
//
//   onSelect(data) {
//     print("Selected Date -> $data");
//   }
//
//   onWeekSelect(data) {
//     print("Selected week starting at -> $data");
//   }
//
//   _monthNameWidget(monthName) {
//     return Container(
//       child: Text(monthName,
//           style: TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.w600,
//               color: Colors.black87,
//               fontStyle: FontStyle.italic)),
//       padding: EdgeInsets.only(top: 8, bottom: 4),
//     );
//   }
//
//   getMarkedIndicatorWidget() {
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//       Container(
//         margin: EdgeInsets.only(left: 1, right: 1),
//         width: 7,
//         height: 7,
//         decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
//       ),
//       Container(
//         width: 7,
//         height: 7,
//         decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
//       )
//     ]);
//   }
//
//   dateTileBuilder(
//       date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
//     bool isSelectedDate = date.compareTo(selectedDate) == 0;
//     Color fontColor = isDateOutOfRange ? Colors.black26 : Colors.black87;
//     TextStyle normalStyle =
//         TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: fontColor);
//     TextStyle selectedStyle = TextStyle(
//         fontSize: 17, fontWeight: FontWeight.w800, color: Colors.black87);
//     TextStyle dayNameStyle = TextStyle(fontSize: 14.5, color: fontColor);
//     List<Widget> _children = [
//       Text(dayName, style: dayNameStyle),
//       Text(date.day.toString(),
//           style: !isSelectedDate ? normalStyle : selectedStyle),
//     ];
//
//     if (isDateMarked == true) {
//       _children.add(getMarkedIndicatorWidget());
//     }
//
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 150),
//       alignment: Alignment.center,
//       padding: EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 5),
//       decoration: BoxDecoration(
//         color: !isSelectedDate ? Colors.transparent : Colors.white70,
//         borderRadius: BorderRadius.all(Radius.circular(60)),
//       ),
//       child: Column(
//         children: _children,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: CalendarStrip(
//         startDate: startDate,
//         endDate: endDate,
//         onDateSelected: onSelect,
//         onWeekSelected: onWeekSelect,
//         dateTileBuilder: dateTileBuilder,
//         iconColor: Colors.black87,
//         monthNameWidget: _monthNameWidget,
//         markedDates: markedDates,
//         containerDecoration: BoxDecoration(color: Colors.black12),
//       ),
//     );
//   }
// }


class MySchedulePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Schedule'),
      ),
      body: Table(
        columnWidths: <int, TableColumnWidth>{
          0: FixedColumnWidth(100.0),
          1: FlexColumnWidth(),
          2: FlexColumnWidth(),
          3: FlexColumnWidth(),
        },
        children: [
          _buildTableRow('Monday', '9:00 AM', '12:00 PM', '1:00 PM', '6:00 PM'),
          _buildTableRow('Tuesday', '10:00 AM', '11:00 AM', '2:00 PM', '5:00 PM'),
          _buildTableRow('Wednesday', '8:00 AM', '11:00 AM', '12:00 PM', '4:00 PM'),
          _buildTableRow('Thursday', '9:00 AM', '1:00 PM', '2:00 PM', '7:00 PM'),
          _buildTableRow('Friday', '9:30 AM', '11:30 AM', '3:00 PM', '5:30 PM'),
        ],
      ),
    );
  }
  
  static TableRow _buildTableRow(String day, String time1, String time2, String time3, String time4) {
    return TableRow(
      children: [
        Center(child: Text(day)),
        _buildTableCell(time1),
        _buildTableCell(time2),
        _buildTableCell(time3),
        _buildTableCell(time4),
      ],
    );
  }
  
  static Widget _buildTableCell(String time) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(time),
    );
  }
}