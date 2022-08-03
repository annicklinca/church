import 'package:flutter/material.dart';
import 'package:bchurch/views/donatechurch_view.dart';
import 'package:bchurch/views/donatechange_view.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' B church'),
      ),
      body:
      SafeArea(
        child: Column(
          children: [ Expanded(
              flex: 1,
              child: Container(
                  child: const Padding(padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                    child: Text(
                      ' "Make God the utmost delight and pleasure of your life, and he will provide for you what you desire the most." ',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ))),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
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
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('Donate Change'),
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
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
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
                      textStyle: const TextStyle(fontSize: 20),
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
