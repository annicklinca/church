import 'package:flutter/material.dart';
import 'package:bchurch/views/donatechurch_view.dart';
import 'package:bchurch/views/donatechange_view.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ochurch'),
      ),
      body:
      SafeArea(
        child: Column(
          children: [ Expanded(
              flex: 1,
              child: Container(
                  child: const Padding(padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                    child: Text(
                      ' " Ochurch is all open to anyone with their Donation. Fill free to give to God he will bless doubly. "',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
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
                    child: const Text('Donate for Charity'),
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
                    child: const Text('Donate to church'),
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
                    child: const Text('Send Your Tithe'),
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
