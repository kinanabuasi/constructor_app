// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
import '../../../logic/controllers/task_controller.dart';
import '../../widgets/task_widget/task_screen_widget.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);
  TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TaskController>(builder: (task) {
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Expanded(
                            child: SizedBox(
                          width: 1,
                        )),
                        const Expanded(
                          flex: 5,
                          child: Text(
                            "New Task",
                            style: TextStyle(color: Colors.white, fontSize: 18),
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
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          defaultTextForm(
                            type: TextInputType.name,
                            controller: task.taskNumController,
                            label: 'Task Number',
                            hint: "Task Number",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultTextForm(
                            type: TextInputType.name,
                            controller: task.addressController,
                            label: 'Address',
                            hint: "Address",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Description",
                            style: TextStyle(fontFamily: "Ariel", fontSize: 18),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 70,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 5.6,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              border: Border.all(
                                color: borderColor,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: defaultTextForm(
                                type: TextInputType.name,
                                controller: task.descriptionController,
                                label: '',
                                isBorder: false,
                                Length: 8,
                                hint: "",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: thirdColor,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 4),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: secondColor,
                                ),
                                hint: const Text("Cumtomar list"),
                                items: task.customerList
                                    .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text("$e"),
                                            ))
                                    .toList(),
                                onChanged: task.onMenuCustomerChanged,
                                value: task.selectedCustomer,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Time",
                                      style: TextStyle(
                                          fontFamily: "Ariel", fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: thirdColor,
                                        border: Border.all(
                                          color: borderColor,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: defaultTextForm(
                                          onTap: () {
                                            showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now(),
                                            ).then((value) {
                                              if (value != null) {
                                                // Use the selected time here
                                                String formattedTime =
                                                    '${value.hour}:${value.minute.toString().padLeft(2, '0')}';
                                                task.timeController.text =
                                                    formattedTime;
                                              }
                                            });
                                          },
                                          type: TextInputType.name,
                                          controller: task.timeController,
                                          label: '',
                                          isBorder: false,
                                          hint: "",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                  child: SizedBox(
                                width: 1,
                              )),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Date",
                                      style: TextStyle(
                                          fontFamily: "Ariel", fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: thirdColor,
                                        border: Border.all(
                                          color: borderColor,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: defaultTextForm(
                                          onTap: () {
                                            showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime.now(),
                                              lastDate:
                                                  DateTime.parse('2030-04-09'),
                                            ).then((value) {
                                              task.dateController.text =
                                                  DateFormat.yMMMd()
                                                      .format(value!);
                                              print(DateFormat.yMMMd()
                                                  .format(value));
                                            });
                                          },
                                          type: TextInputType.name,
                                          controller: task.dateController,
                                          label: '',
                                          isBorder: false,
                                          hint: "",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 25,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: thirdColor,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 4),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: secondColor,
                                ),
                                hint: const Text("Group list"),
                                items: task.groupList
                                    .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text("$e"),
                                            ))
                                    .toList(),
                                onChanged: task.onMenuGroupChanged,
                                value: task.selectedGroup,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: task.onTaskSave,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: secondColor),
                                    height:
                                        MediaQuery.of(context).size.height / 14,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: const Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontFamily: "Ariel",
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
