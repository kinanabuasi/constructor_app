// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../constants/routes.dart';
import '../../../logic/controllers/expense_controller.dart';
import '../../widgets/expense_widget/expense_screen_widget.dart';

class ExpenseScreen extends StatelessWidget {
  ExpenseScreen({Key? key}) : super(key: key);
  ExpenseController expenseController = Get.put(ExpenseController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpenseController>(builder: (expense) {
      return SafeArea(
        child: Scaffold(
          body:
           CustomScrollView(
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
                            "New Expense ",
                            style: TextStyle(
                              color: Colors.white, fontSize: 18),
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
                          const Text(
                            "Expense Information",
                            style: TextStyle(fontFamily: "Ariel", fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          defaultTextForm(
                            type: TextInputType.name,
                            controller: expense.titleController,
                            label: 'Title',
                            hint: "Title",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultTextForm(
                            type: TextInputType.name,
                            controller: expense.descriptionController,
                            label: 'Description',
                            hint: "Description",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultTextForm(
                            type: TextInputType.name,
                            controller: expense.dateController,
                            suffix: AppIcons.calender,
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('2030-04-09'),
                              ).then((value) {
                                expense.dateController.text =
                                    DateFormat.yMMMd().format(value!);
                                print(DateFormat.yMMMd().format(value));
                              });
                            },
                            label: 'Apr 9,2023',
                            hint: 'Apr 9,2023',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultTextForm(
                            type: TextInputType.name,
                            controller: expense.totalController,
                            label: 'Total amount',
                            hint: "Total amount",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Reimburse to",
                            style: TextStyle(fontFamily: "Ariel", fontSize: 18),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: thirdColor,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 4),
                              child: DropdownButton(
                                underline: Container(),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: secondColor,
                                ),
                                hint: const Text("Client name"),
                                items: expense.itemsDrop1
                                    .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text("$e"),
                                            ))
                                    .toList(),
                                onChanged: expense.onMenuClientChanged,
                                value: expense.selectedClient,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Accounting Code",
                            style: TextStyle(fontFamily: "Ariel", fontSize: 18),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.19,
                            margin: const EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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
                                hint: const Text("code"),
                                items: expense.codeList
                                    .map<DropdownMenuItem<String>>(
                                        (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text("$e"),
                                            ))
                                    .toList(),
                                onChanged: expense.onMenuCodeChanged,
                                value: expense.selectedCode,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: expense.selectedCode == "None"
                                ? const Text(
                                    'No accounting codes found. To add codes , use invoicer in web browser',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )
                                : const SizedBox(
                                    height: 10,
                                  ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 60,
                        color: mainColor,
                        width: double.infinity,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            appIcon(
                                icon: AppIcons.plus, iconColor: secondColor),
                            const SizedBox(
                              width: 13,
                            ),
                            const Text(
                              "Linked job",
                              style: TextStyle(
                                  fontFamily: "Ariel",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 60,
                        color: mainColor,
                        width: double.infinity,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            appIcon(
                                icon: AppIcons.plus, iconColor: secondColor),
                            const SizedBox(
                              width: 13,
                            ),
                            const Text(
                              "Attach receipt",
                              style: TextStyle(
                                  fontFamily: "Ariel",
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: expense.onExpenseSave,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: secondColor),
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.5,
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
                    const SizedBox(
                      height: 30,
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
