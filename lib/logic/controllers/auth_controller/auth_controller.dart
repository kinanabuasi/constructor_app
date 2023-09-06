import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisibilty = false;
  bool isVisibilty2 = false;

  void visibilty() {
    isVisibilty = !isVisibilty;

    update();
  }

  void visibilty2() {
    isVisibilty2 = !isVisibilty2;

    update();
  }
}
