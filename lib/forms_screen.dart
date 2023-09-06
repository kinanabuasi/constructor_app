// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, unused_import, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';
import 'forms_widget.dart';

class forms_screen extends StatelessWidget {
  forms_screen({super.key});
  final _elementCountController = TextEditingController();
  final _searchController = TextEditingController();
  final List<String> titles = ['Title 1', 'Title 2', 'Title 3', 'Title 4'];
  final List<List<Color>> colorVectors = [
    [Color(0xFF0000), Color(0xFF00FF)],
    [Color(0xFFFF00), Color(0x0000FF)],
    [Color(0x00FF00), Color(0xFF0000)],
    [Color(0x0000FF), Color(0x00FFFF)],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 98.54, left: 124.38),
                  child: Text_view(
                    txt: "All Form",
                    statue: FontWeight.w400,
                    fontFamily: arial,
                    color: Colors.black,
                    fontSize: 57,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 109.4, right: 78),
                //   child: TextField(
                //     controller: _searchController,
                //     // maxLength: 549,
                //     decoration: InputDecoration(
                //       hintText: 'Search for...',
                //       hintStyle: TextStyle(
                //         fontSize: 39,
                //         fontFamily: arial,
                //         fontWeight: FontWeight.w400,
                //         color: Color.fromRGBO(181, 181, 181, 1),
                //       ),
                //       border: InputBorder.none,
                //       prefixIcon: Icon(Icons.search),
                //     ),
                //   ),
                // ),
                //
              ],
            ),
            // SizedBox(
            //   height: 66.69,
            // ),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 231.9, top: 237.1),
        //       child: Row(
        //         children: [
        //           Text_view(
        //             txt: "Show",
        //             statue: FontWeight.w400,
        //             fontFamily: arial,
        //             color: Colors.black,
        //             fontSize: 39,
        //           ),
        //           SizedBox(width: 9.52),
        //           TextFormField(
        //             controller: _elementCountController,
        //             keyboardType: TextInputType.number,
        //             decoration: InputDecoration(
        //               // labelText: 'Element Count',
        //               border: OutlineInputBorder(),
        //             ),
        //           ),
        //           //       ElevatedButton(
        //           //   onPressed: () {
        //           //     int elementCount = int.tryParse(_elementCountController.text) ?? 0;
        //           //     // Do something with element count
        //           //   },
        //           //   child: Text('Submit'),
        //           // ),
        //           SizedBox(width: 11.15),
        //           Text_view(
        //             txt: "Show",
        //             statue: FontWeight.w400,
        //             fontFamily: arial,
        //             color: Colors.black,
        //             fontSize: 39,
        //           ),
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       height: 149.2,
        //     ),
        //     Row(
        //       children: [
        //         Image.asset("assets/images/files.png"),
        //         SizedBox(
        //           width: 54.93,
        //         ),
        //         Text_view(
        //           txt: "All Form",
        //           statue: FontWeight.w400,
        //           fontFamily: arial,
        //           color: Colors.black,
        //           fontSize: 39,
        //         ),
        //         SizedBox(
        //           width: 390.67,
        //         ),
        //         Container(
        //           width: 1.0,
        //           height: double.infinity,
        //           color: Color.fromRGBO(168, 168, 168, 1),
        //         ),
        //         SizedBox(
        //           width: 62.6,
        //         ),
        //         Image.asset("assets/images/star.png"),
        //         SizedBox(
        //           width: 45.93,
        //         ),
        //         Text_view(
        //           txt: "Favorite Forms",
        //           statue: FontWeight.w400,
        //           fontFamily: arial,
        //           color: Colors.black,
        //           fontSize: 39,
        //         ),
        //         SizedBox(
        //           width: 390.67,
        //         ),
        //         Container(
        //           width: 1.0,
        //           height: double.infinity,
        //           color: Color.fromRGBO(168, 168, 168, 1),
        //         ),
        //         SizedBox(
        //           width: 125.9,
        //         ),
        //         Image.asset("assets/images/doc.png"),
        //          SizedBox(
        //           width: 45.93,
        //         ),
        //         Text_view(
        //           txt: "most used Forms",
        //           statue: FontWeight.w400,
        //           fontFamily: arial,
        //           color: Colors.black,
        //           fontSize: 39,
        //         ),
        //       ],
        //     ),
        //     SizedBox(
        //       height: 158.82,
        //     ),
        //     GridView.builder(
        //   itemCount: titles.length,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 5,
        //     crossAxisSpacing: 8.0,
        //     mainAxisSpacing: 8.0,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     return GestureDetector(
        //       onTap: () {
        //         // Handle tap on item
        //       },
        //       child: Container(
        //         padding: const EdgeInsets.all(8.0),
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //             colors: colorVectors[index],
        //             begin: Alignment.topLeft,
        //             end: Alignment.bottomRight,
        //           ),
        //           borderRadius: BorderRadius.circular(8.0),
        //         ),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             MyFileIcon(
        //               contentColor: Colors.purple,
        //               coverColor: Colors.yellow,
        //             ),
        //             Text(
        //               titles[index],
        //               style: TextStyle(
        //                 fontSize: 18.0,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white,
        //               ),
        //             ),
        //
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        // ),

          ],
        ),
      // ),
    );
  }
}
