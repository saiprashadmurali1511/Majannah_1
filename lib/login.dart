import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Get.off(() => LoginWidget(), transition: Transition.leftToRight);
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/Mask Group 117.png'),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Splash());
}
