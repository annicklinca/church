import 'package:bchurch/controllers/donate_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bchurch/controllers/home_controller.dart';

class Donatechange extends StatelessWidget {
  const Donatechange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homectl = Get.put(HomeController());
    var donatectl = Get.put(DonateController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Donate here'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Obx(() => TextFormField(
                  controller: donatectl.nameController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: homectl.lang.toString() == 'ENG'
                        ? 'Your fullname'
                        : 'Amazina Yawe',
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Obx(() => TextFormField(
                  controller: donatectl.phoneController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: homectl.lang.toString() == 'ENG'
                        ? 'Phonenumber'
                        : 'Numero Yawe',
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Obx(() => TextFormField(
                  controller: donatectl.emailController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: homectl.lang.toString() == 'ENG'
                        ? 'Email'
                        : 'Emeli Yawe',
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Obx(() => TextFormField(
                  controller: donatectl.amountController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: homectl.lang.toString() == 'ENG'
                        ? 'Amount to Donate'
                        : 'Umubare wa mafaranga',
                  ),
                )),
          ),
           Center(
             child: Obx(() => DropdownButtonFormField(
              decoration: InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
              ),
              value:donatectl.valuePayment.toString(),
              dropdownColor: Colors.white,
            items: <String>['MTN Mobile Money', 'Airtel Money', 'Credit Card'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                 value: value,
                 child: Text(
                  value,
                 style: TextStyle(fontSize: 15),
      ),
    );
  }).toList(), onChanged: (String? value) { 
        donatectl.changeValue(value.toString());
   },
)), 
           ),
           
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      donatectl.donateNow();
                    },
                    child: Obx(() => donatectl.loading.toString() == 'true'
                        ? const Text('donating.... ')
                        : const Text('Donate ')),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
