import 'dart:async';

import 'package:flutter/material.dart';

import 'home_view.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 120, top: 140),
              child: Text(
                'Ochurch ',
                style: TextStyle(color: Colors.indigo, fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ),
             Container(
              padding: EdgeInsets.only(left: 120, top: 190),
              child: Text(
                'welcome to Ochurch ',
                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
          ),
        ],
      ),
    );
  }
}
