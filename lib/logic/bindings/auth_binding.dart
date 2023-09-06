import 'package:contractor/logic/controllers/auth_controller/login_controller.dart';
import 'package:contractor/logic/controllers/auth_controller/registeration_controller.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => RegisterationController());
  }
}
