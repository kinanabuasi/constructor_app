// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
import '../../../logic/controllers/client_controller.dart';
import '../../widgets/cleint_widget/client_screen_widget.dart';

class ClientScreen extends StatelessWidget {
  ClientScreen({Key? key}) : super(key: key);
  ClientController clientController = Get.put(ClientController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(builder: (client) {
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
                            "New client ",
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
                child: Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Client Information",
                        style: TextStyle(fontFamily: "Ariel", fontSize: 18),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.idController,
                        label: 'ID Client no',
                        hint: "ID Client no",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.firstController,
                        label: 'First name ',
                        hint: "First name",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.lastController,
                        label: 'Last name ',
                        hint: "Last name",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: defaultTextForm(
                              type: TextInputType.name,
                              controller: client.phoneCodeController,
                              label: '  (+)',
                              hint: "  (+)",
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 9,
                            child: defaultTextForm(
                              type: TextInputType.phone,
                              controller: client.phoneController,
                              label: 'Phone number ',
                              hint: "Phone number ",
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Row(
                            children: [
                              Icon(
                                client.isSelected == false
                                    ? Icons.radio_button_off
                                    : Icons.radio_button_checked_outlined,
                                color: secondColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "Receives text messages",
                                style: TextStyle(color: secondColor),
                              )
                            ],
                          ),
                          onTap: () {
                            client.receiveMessage();
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.emailAddress,
                        controller: client.emailController,
                        label: 'Email Company ',
                        hint: "Email Company",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.referredController,
                        label: 'Referred By ',
                        hint: "Referred By",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.text,
                        controller: client.propertyAddressController,
                        label: 'Property Address ',
                        hint: "Property Address",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.text,
                        controller: client.lineAddressController,
                        label: 'Address Line ',
                        hint: "Address Line",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.text,
                        controller: client.cityController,
                        label: 'City ',
                        hint: "City",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.text,
                        controller: client.provinceController,
                        label: 'Province ',
                        hint: "Province",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.text,
                        controller: client.postalController,
                        label: 'Postal code',
                        hint: "Postal code",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.text,
                        controller: client.stateController,
                        label: 'United State',
                        hint: "United State",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Contract Client URL",
                        style: TextStyle(fontFamily: "Ariel", fontSize: 18),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.webController,
                        label: 'Web Url',
                        hint: "Web Url",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.facebookController,
                        label: 'Facebook',
                        hint: "Facebook",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.twitterController,
                        label: 'Twitter',
                        hint: "Twitter",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      defaultTextForm(
                        type: TextInputType.name,
                        controller: client.linkedinController,
                        label: 'Linkedin',
                        hint: "Linkedin",
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: GestureDetector(
                          onTap: client.onClientSave,
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
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
