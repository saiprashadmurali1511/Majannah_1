import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'interests.dart';

class Loader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoaderState();
  }
}

class LoaderState extends State<Loader> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Get.to(Interests(),transition: Transition.rightToLeft);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column( // Use Column to align children vertically
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Mask Group 63.png',
                alignment: Alignment.topCenter,
              ),
              SizedBox(height: 20),
              Text(
                'Creating Account...',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please don\'t close the application.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
