import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/apiCall.dart';

class DonateController extends GetxController {
  var loading = false.obs;
  var message = ''.obs;
  var valuePayment = 'MTN Mobile Money'.obs;
  late TextEditingController nameController,
      emailController,
      amountController,
      phoneController;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    amountController = TextEditingController();
    phoneController = TextEditingController();
  }

void changeValue(String? value) {
  valuePayment.value=value.toString();
}
  void donateNow() async {
    loading.value = true;
    if (emailController.text.isEmpty || phoneController.text.isEmpty) {
      message.value = 'Fields must be  filled';
      loading.value = false;
      Get.snackbar(
        'Error',
        message.toString(),
        backgroundColor: const Color(0xff37C459),
      );
    } else {
      var data = {
        "name": nameController.text,
        "location": "Kigali",
        "phone": phoneController.text,
        "paymentway":valuePayment.toString(),
        "amount": amountController.text
      };

      var response = await CallAPi().postData(data, 'church/');
      var res = jsonDecode(response.body.toString());
      print(response);
      if (response.statusCode == 201) {
        loading.value = false;
         Get.snackbar(
          'Success',
          valuePayment.toString()=='MTN Mobile Money'? res['response']['message'].toString():"You have successful donated ",
          backgroundColor: const Color(0xff37C459),
        );
      } else {
        loading.value = false;
        Get.snackbar(
          'Error',
          res['messages'],
          backgroundColor: const Color(0xff37C459),
        );
        message.value = res['messages'];
      }
    }
  }
}
