import 'package:get/get.dart';
class HomeController extends GetxController{
  var lang="ENG".obs;

  void changeLanguage({String? eng}){
   lang.value=eng.toString();
  }
}