import 'package:get/get.dart';

class HomeConrtoller extends GetxController {
  var language = "En".obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeLangugae({String? eng}) async {
    language.value = eng.toString();
  }
}
