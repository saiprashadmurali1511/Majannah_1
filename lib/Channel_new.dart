import 'package:Majannah/channel.dart';
import 'package:Majannah/nowplaying.dart';
import 'package:Majannah/share.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'carplay.dart';
import 'explore.dart';

void main() {
  runApp(Channel_New());
}

class Channel_New extends StatefulWidget {
  @override
  State<Channel_New> createState() => _Channel_NewState();
}

class _Channel_NewState extends State<Channel_New> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                          Get.to(Channel(), transition: Transition.rightToLeft);
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
                SizedBox(height: 5),
                Text(
                  '10 May, 2023 - 13 min',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    Get.to(NowPlaying(),transition: Transition.noTransition);
                  },
                 child: Image.asset(
                    'assets/images/play-button-svgrepo-com (2).png',
                    width: 63,
                    height: 63,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/download-cloud-svgrepo-com (1).png'),
                    SizedBox(width: 20),
                    Image.asset('assets/images/Path 5629.png'),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Get.to(Carplay(), transition: Transition.cupertino);
                      },
                      child: Image.asset('assets/images/Path 5631.png'),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              color: Color(0xFFFFFFFF), // Background color
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  buildListTile(
                                    text: 'Share Podcast',
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 428,
                                            width: 430,
                                            color: Color(0xFFF2F1EC),
                                            child: Column(
                                              children: [
                                                SizedBox(height: 20),
                                                Row(
                                                  children: [
                                                    Image.asset('assets/images/Group 129.png'),
                                                    SizedBox(width: 15),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(height: 15),
                                                        Text(
                                                          'Mohammad Bilal',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Podcast App',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Image.asset(
                                                        'assets/images/close-svgrepo-com (2).png',
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                // Add more widgets here
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  buildListTile(
                                    text: 'Share Episode',
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            height: 428,
                                            width: 430,
                                            color: Color(0xFFF2F1EC),
                                            child: Column(
                                              children: [
                                                SizedBox(height: 20),
                                                Row(
                                                  children: [
                                                    Image.asset('assets/images/Group 129.png'),
                                                    SizedBox(width: 15),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(height: 15),
                                                        Text(
                                                          'Mohammad Bilal',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Podcast App',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Align(
                                                      alignment: Alignment.topLeft,
                                                      child: Image.asset(
                                                        'assets/images/close-svgrepo-com (2).png',
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                // Add more widgets here
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  buildListTile(
                                    text: 'Current Position',
                                    onPressed: () {
                                      // Handle current position action
                                      Get.to(Share());
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Image.asset('assets/images/Path 5630.png'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing\nand typesetting industry. Lorem Ipsum is simply\ndummy text of the printing.',
                   textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'News',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF114769),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFDBDB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                    SizedBox(width: 9),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Culture',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF114769),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF0E7F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                    SizedBox(width: 9),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Literature',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF114769),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE5EAFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
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
                        'Suggested Episodes',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Get.to(Channel(), transition: Transition.leftToRight);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset(
                              'assets/images/Mask Group 132.png',
                              height: 77,
                              width: 77,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Get.to(Channel_New(), transition: Transition.leftToRight);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset(
                              'assets/images/Mask Group 132.png',
                              height: 77,
                              width: 77,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Get.to(Channel_New(), transition: Transition.leftToRight);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset(
                              'assets/images/Mask Group 132.png',
                              height: 77,
                              width: 77,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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

ListTile buildListTile({required String text, required VoidCallback onPressed}) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(
        fontSize: 14,
      ),
    ),
    onTap: onPressed,
  );
}
