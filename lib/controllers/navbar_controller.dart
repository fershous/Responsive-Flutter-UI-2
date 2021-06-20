import 'package:get/get.dart';

class NavbarController extends GetxController {

  RxDouble width = 0.0.obs;
  RxBool flex = true.obs;

  void setWidth(double w) {
    flex.value ? width.value = w * 0.80 : width.value = w;
    flex.value = !flex.value;
  }

}