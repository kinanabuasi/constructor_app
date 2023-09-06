// ignore_for_file: file_names, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable, unused_local_variable, avoid_unnecessary_containers, unused_label, use_build_context_synchronously

import 'package:contractor/view/screens/public/work_group_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';

import '../main_view.dart';
import 'home_screen.dart';

// import 'package:permission_handler/permission_handler.dart';
class OccupationScreen extends StatelessWidget {
  OccupationScreen({super.key});
  final MyImageController myImageController = Get.put(MyImageController());
  final MyController myController = Get.put(MyController());
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
            txt: "Occupation",
            statue: FontWeight.w700,
            fontFamily: "Arial",
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 30, top: 32, right: 30),
          child: ListView(
            children: [
              Text_view(
                txt: "Number occupation ",
                statue: FontWeight.w400,
                fontFamily: "Myriad",
                color: Colors.black,
                fontSize: 18,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "Jhone smith",
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(
                    fontFamily: "Myriad",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text_view(
                txt: "Occupation Name",
                statue: FontWeight.w400,
                fontFamily: "Myriad",
                color: Colors.black,
                fontSize: 18,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "Jhone@company.com",
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(
                    fontFamily: "Myriad",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text_view(
                txt: "Mobile",
                statue: FontWeight.w400,
                fontFamily: "Myriad",
                color: Colors.black,
                fontSize: 18,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "(+1)999 9999 9999",
                  contentPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(
                    fontFamily: "Myriad",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text_view(
                txt: " Occupation Description",
                statue: FontWeight.w600,
                fontFamily: "Myriad",
                color: Colors.black,
                fontSize: 16,
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                decoration: InputDecoration(
                  border: myinputborder(),
                  enabledBorder: myinputborder(),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                // expands: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text_view(
                txt: "Occupation photo",
                statue: FontWeight.w400,
                fontFamily: "Myriad",
                color: Colors.black,
                fontSize: 18,
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Color.fromRGBO(1, 41, 57, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  minLeadingWidth: 10.44,
                                  leading: Icon(
                                    Icons.add_a_photo_outlined,
                                    color: Colors.white,
                                  ),
                                  title: Text_view(
                                    txt: "Take a photo",
                                    statue: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    // _requestCameraPermission(context);
                                    myImageController
                                        .getImage(ImageSource.camera);
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  minLeadingWidth: 10.44,
                                  leading: Icon(
                                    Icons.add_photo_alternate_outlined,
                                    color: Colors.white,
                                  ),
                                  title: Text_view(
                                    txt: "Choose a photo",
                                    statue: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  // Text('Choose from gallery'),
                                  onTap: () {
                                    Navigator.pop(context);
                                    myImageController
                                        .getImage(ImageSource.gallery);
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                  minLeadingWidth: 10.44,
                                  leading: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                  title: Text_view(
                                    txt: "Remove the photo",
                                    statue: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    myImageController.deleteImage();
                                  },
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    minWidth: 71,
                                    height: 27,
                                    color: Color.fromRGBO(124, 176, 65, 1),
                                    child: Text_view(
                                      txt: "CANCEL",
                                      statue: FontWeight.w400,
                                      fontFamily: "Myriad",
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Padding(
                  padding:  EdgeInsets.only(
                    right: MediaQuery.of(context).size.width/1.9,
                  ),
                  child: DottedBorder(
                    color: Colors.black,
                    strokeWidth: 1,
                    dashPattern: [
                      2,
                      2,
                    ],
                    child: SizedBox(
                      width:  MediaQuery.of(context).size.width/1.9,
                      height: MediaQuery.of(context).size.height/9,
                      child: Obx(() => myImageController.image.value == null
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 18.59,
                                ),
                                SizedBox(
                                  width: 19,
                                  height: 19,
                                  child: Image.asset(
                                    'assets/images/photo.png',
                                  ),
                                ),

                                SizedBox(
                                  height: 6.86,
                                ),
                                SizedBox(
                                  width: 103,
                                  height: 34,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: "Drop your image,",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.47),
                                        fontFamily: "Myriad",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '\nor select ',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.47),
                                            fontFamily: "Myriad",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'click to browser',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(124, 176, 65, 1),
                                            fontFamily: "Myriad",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // ),
                              ],
                            )
                          : Image.file(myImageController.image.value!)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  minWidth: 290,
                  height: 51,
                  color: Color.fromRGBO(124, 176, 65, 1),
                  child: Text_view(
                    txt: "Save",
                    statue: FontWeight.w700,
                    fontFamily: "Arial",
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 78,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
