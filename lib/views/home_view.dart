import 'package:bchurch/controllers/home_controller.dart';
import 'package:bchurch/views/donatechange_view.dart';
import 'package:flutter/material.dart';
import 'package:bchurch/views/donatechurch_view.dart';
import 'package:bchurch/views/donate_view.dart';
import 'package:get/get.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeCtr=Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Ochurch'),
        actions: [
          IconButton(onPressed: (){
            homeCtr.changeLanguage(eng: 'KINY');
          }, icon: Icon(Icons.person_sharp))
        ],
      ),
      body:
      SafeArea(
        child: Column(
          children: [ Expanded(
              flex: 1,
              child: Container(
                  child:  Padding(padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                    child: Obx(()=>
                    homeCtr.lang=='ENG'?
                       const Text(
                        ' "Do not Forget to do good and to share with others.for with such sacrifices God is pleased."\n\n Hebrews 13:6. ',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ):const Text(
                        ' Ikinyarwanda ',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ),
                  ))),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
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
                    child: const Text('Donate for Charity'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Donate()));
                      // Get.to(nextView())
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    child: const Text('Donate to church'),
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
