import 'package:contractor/logic/controllers/job_controller.dart';
import 'package:contractor/view/screens/auth/welcome_screen.dart';
import 'package:contractor/view/widgets/job_widget/job_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
import '../../widgets/my_text.dart';

class JobScreen extends StatelessWidget {
  final controller = Get.put(JobController());
  JobScreen({super.key});

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
                padding: const EdgeInsets.only(right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                        child: SizedBox(
                      width: 1,
                    )),
                    const Expanded(
                      flex: 3,
                      child: Text(
                        "New Job ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.homeScreen);
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
          SliverToBoxAdapter(
            child: JobScreenBody(controller: controller),
          )
        ],
      )),
    );
  }
}
