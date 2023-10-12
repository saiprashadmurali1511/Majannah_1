import 'package:Majannah/nowplaying.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Carplay extends StatefulWidget {
  @override
  CarplayState createState() => CarplayState();
}

class CarplayState extends State<Carplay> {
  double initialTime = 10 * 60 + 25; // Initial time in seconds (10 minutes and 25 seconds)
  double finalTime = 45 * 60; // Final time in seconds (45 minutes)
  late double progressvalue;

  void updateProgress() {
    setState(() {
      progressvalue = 1.0; // Set to 100% (final value)
    });
  }


  String buttonImage = 'assets/images/Path 5657.png'; // Initial image asset

  void onPressed() {
    // Change the image asset when the button is pressed
    setState(() {
      buttonImage = 'assets/images/play.png'; // Replace with your desired image asset
    });
  }

  String getTimeFromProgress(double progress) {
    final totalSeconds = (progress * finalTime).toInt();
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    progressvalue = initialTime / finalTime; // Initialize progressvalue
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Get.to(NowPlaying(), transition: Transition.rightToLeft);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Image.asset('assets/images/Path 5687.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 108),
                    Text(
                      'Car Play',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Mask Group 132.png',
                    height: 311,
                    width: 302,
                  ),
                ),
                SizedBox(height: 34),
                Text(
                  'Mind Set Channel Name',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Episode: Think and grow rich...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Lorem Ipsum is simply dummy\ntext of the printing and\ntypesetting industry.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35), // Add horizontal padding
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xFFC5DFEC),
                    valueColor: AlwaysStoppedAnimation(Color(0xFF114768)),
                    minHeight: 5.0,
                    value: 0.4, // Set to 100% (final value)
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/minusten.png',
                      color: Color(0xFF1D597E),
                      width: 63.87, // Adjust the width as needed
                      height: 60.11, // Adjust the height as needed
                    ),
                    SizedBox(width: 20), // Adjust the gap between the first and second images
                GestureDetector(
                  onTap: (){
                  },
                  child:Image.asset('assets/images/play-button-svgrepo-com (2).png',
                    width: 88,
                    height: 88,),
                ),
                    SizedBox(width: 20), // Adjust the gap between the second and third images
                    Image.asset(
                      'assets/images/plusten.png',
                      color: Color(0xFF1D597E),
                      width: 63.87, // Adjust the width as needed
                      height: 60.11, // Adjust the height as needed
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeController extends GetxController {
  final currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
