import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Container(
        child: Column(
          children: [
            Center(
              child:
              Padding(padding: const EdgeInsets.fromLTRB(20, 350, 20, 0),
                child: Container(
                  width: 200,
                  height: 30,
                  child: Image(image: AssetImage('./assets/money_3.png'),),
                ),
              ),
            )
          ],
        ) ,
      ),);
  }
}
