import 'package:contractor/logic/controllers/home_controller.dart';
import 'package:contractor/logic/controllers/main_contractor_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(MainContractorController());
  }
}
