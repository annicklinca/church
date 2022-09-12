import 'package:flutter/material.dart';
import 'package:bchurch/controllers/home_controller.dart';
import 'package:bchurch/views/donatechurch_view.dart';
import 'package:bchurch/views/donatechange_view.dart';
import 'package:get/get.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var homeCtr = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Ochurch'),
      ),
      body:
      SafeArea(
        child: Column(
          children: [ 
              Expanded(
              flex: 1,
              child: Container(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                child: Obx(() => homeCtr.lang == 'ENG'
                    ? const Text(
                        ' "Ochurch is all open to anyone \n with their Donation.Fill free to give \n to God he will bless you doubly" ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const Text(
                        ' " Ochurch yemera amaturo yose. Ituro ryose riremewe imbere y Imana kandi Utanga azakubirwa kabiri " ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
              ))),
            ClipRRect(
              
              borderRadius: BorderRadius.circular(100),
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Donatechange()));
                      // Get.to(nextView())
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                      child: Obx(() => homeCtr.lang == 'ENG'
                    ? const Text(
                        ' Donate for Charity',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    : const Text(
                        ' Ituro ryo Gufasha',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Donatechurch()));
                      // Get.to(nextView())
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                       child: Obx(() => homeCtr.lang == 'ENG'
                    ? const Text(
                        ' Donate for Building',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    : const Text(
                        ' Ituro ry Inyubako',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
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
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Donatechurch()));
                      // Get.to(nextView())
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                       child: Obx(() => homeCtr.lang == 'ENG'
                    ? const Text(
                        ' Send your Tithe',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    : const Text(
                        ' Icyacumi',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                  ),
                ],
              ),
            ),
          ]
        ),
      )
      ,);
  }
}
