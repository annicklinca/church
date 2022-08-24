import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bchurch/controllers/home_controller.dart';


class Donatechange extends StatelessWidget {
  const Donatechange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 var homectl = Get.put(HomeController());    return Scaffold(
      appBar: AppBar(
        title: Text('Donate here'),
      ),
      body: SafeArea(child: Column(
        children: [
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Obx(() => TextFormField(
                  decoration:  InputDecoration(
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
                  decoration:  InputDecoration(
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
                  decoration:  InputDecoration(
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
                  decoration:  InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: homectl.lang.toString() == 'ENG'
                        ? 'Amount to Donate'
                        : 'Umubare wa mafaranga',
                  ),
                )),
          ),
         ClipRRect(
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
                onPressed: () {},
                child: const Text('Donate '),
              ),
            ],
          ),
        ),
        ],
      )),);
  }
}
