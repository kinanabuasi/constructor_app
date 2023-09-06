// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../widgets/my_text.dart';

class Employee_screen extends StatelessWidget {
  const Employee_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: mainColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Expanded(
                          child: SizedBox(
                        width: 1,
                      )),
                      const Expanded(
                        flex: 5,
                        child: MyText(
                          underLine: TextDecoration.none,
                          text: "New employee",
                          fontWeight: FontWeight.w700,
                          fontFamily: arial,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Get.toNamed(Routes.homeScreen);
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
                      // )
                    ],
                  ),
                ),
              ),
              expandedHeight: 109,
            ),
            SliverToBoxAdapter(),
          ],
        ),
      ),
    );
  }
}
