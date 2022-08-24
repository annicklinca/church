import 'package:bchurch/views/home_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var lang = "ENG".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getSharedPrefs();
  }

  void getSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    var pp = prefs.getString('language');
    if (pp.toString() == 'null') {
      lang.value = 'ENG';
    } else {
      lang.value = prefs.getString('language')!;
    }
  }

  void changeLanguage({String? eng}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('language', eng.toString());
    lang.value = eng.toString();
  }
}
