import 'package:contractor/view/screens/main_view.dart';
import 'package:contractor/view/screens/public/home_screen.dart';
import 'package:contractor/view/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../widgets/switch_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(1, 41, 57, 1),
        centerTitle: true,
        toolbarHeight: 102,
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(left: 295, top: 66.79),
            child: IconButton(
              onPressed: () {
                Get.to(HomeScreen());
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          centerTitle: true,
          title: Text_view(
            txt: "Notifications",
            statue: FontWeight.w700,
            fontFamily: "Arial",
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(24.71),
          child: ListView(
            children: [
              SizedBox(
                height: 43,
              ),
              Text_view(
                txt:
                "Receive push notification on your mobile or table devices",
                statue: FontWeight.w400,
                fontFamily: "Myriad",
                color: Colors.black,
                fontSize: 18,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text_view(
                        txt: "Today’s schedule changed ",
                        statue: FontWeight.w400,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text_view(
                        txt: "New request",
                        statue: FontWeight.w400,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text_view(
                        txt: "Client viewed quote",
                        statue: FontWeight.w400,
                        fontFamily: "Myriad",
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 41),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        custom_switch(Value: false),
                        SizedBox(
                          height: 19,
                        ),
                        custom_switch(Value: false),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
