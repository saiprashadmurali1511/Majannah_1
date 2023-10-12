import 'package:Majannah/Channel_new.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'channel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NowPlaying(),
    );
  }
}

class NowPlaying extends StatefulWidget {
  @override
  NowPlayingState createState() => NowPlayingState();
}

class NowPlayingState extends State<NowPlaying> {
  double progressvalue = 0.0;
  void updateProgres() {
    setState(() {
      progressvalue = 1.0;
    });
  }

  String buttonImage = 'assets/images/play-button-svgrepo-com (2).png'; // Initial image asset

  void onTap() {
    // Change the image asset when the button is pressed
    setState(() {
      buttonImage = 'assets/images/play-button-svgrepo-com (2).png'; // Replace with your desired image asset
    });
  }

  String getTimeFromProgress(double progress) {
    final totalSeconds = (progress * 60).toInt(); // Assuming 60 seconds for 100% progress
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  """Lorem Ipsum is simply dummy text of the printing
\nand typesetting industry. Lorem Ipsum is simply\n dummy text of the printing and typesetting\n industry.""",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Timestamps',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  """00:00 - Introduction\n01:00 - Lorem Ipsum is simply dummy\n02:00 - Lorem Ipsum is simply dummy""",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Resources',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  """Lorem Ipsum is simply dummy text of the printing\and typesetting industry. Lorem Ipsum is simply\n dummy text of the printing and typesetting\n industry.""",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        Get.to(Channel_New(), transition: Transition.rightToLeft);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Image.asset('assets/images/Path 5687.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Text(
                    'Think and grow rich...',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 55),
                  Image.asset(
                    'assets/images/Path 5670.png',
                    height: 18.91,
                    width: 18.3,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Mask Group 132.png'),
              ),
              SizedBox(height: 20),
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
              Text.rich(
                TextSpan(
                  text:
                  """Lorem Ipsum is simply dummy text of the printing
            and typesetting industry.""",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      text: "Read more..",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _showBottomSheet();
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: LinearProgressIndicator(
                  backgroundColor: Color(0xFFC5DFEC),
                  valueColor: AlwaysStoppedAnimation(Color(0xFF114768)),
                  minHeight: 5.0,
                  value: progressvalue,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/minusten.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                     Container(
                       color: Colors.transparent, // Set the background color to transparent

                       child: InkWell(
                         onTap: () {
                           setState(() {
                             // Change the image when tapped
                             if (buttonImage == 'assets/images/play-button-svgrepo-com (2).png') {
                               buttonImage = 'assets/images/play-button-svgrepo-com (2).png';
                             } else {
                               buttonImage = 'assets/images/play-button-svgrepo-com (2).png';
                             }
                           });
                         },
                         child: Image.asset(
                           buttonImage,
                           width: 63,
                           height: 63,
                         ),
                       ),

                     ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/images/plusten.png',
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
              SizedBox(height: 43),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'All Episodes',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true, // Important: Add this to prevent errors
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Image.asset(
                                  'assets/images/Mask Group 134.png',
                                  height: 77,
                                  width: 77,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 14),
                                  Text(
                                    '18th June 2023',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000).withOpacity(0.56),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Daily News Ep. #11',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      SizedBox(width: 74),
                                      Image.asset(
                                        'assets/images/Path 5657.png',
                                        height: 33,
                                        width: 33,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '12 min 8 sec left',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Padding(
                            padding: const EdgeInsets.only(right: 105),
                            child: Column(
                              children: [
                                Text(
                                  """Each episode of The Daily Good begins with
a warm...""",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Divider(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
            ],
        ),
    ],),
    ),
      ),
    );
  }
}
