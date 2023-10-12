import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'nowplaying.dart';

void main() {
  runApp(Playing());
}

class Playing extends StatefulWidget {
  @override
  State<Playing> createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 100.0)),
                  Text(
                    'Think and grow rich...',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 50),
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
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF114769), Color(0xFF092435)],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    GestureDetector(
                      onTap: (){
                        Get.to(NowPlaying(),transition:Transition.rightToLeft);
                      },

                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: CircleBorder(),
                  ),
                  child: Image.asset(
                    'assets/images/Path 5657.png',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 128.5)),
                  Image.asset('assets/images/download-cloud-svgrepo-com (1).png'),
                  SizedBox(width: 20),
                  Image.asset('assets/images/Path 5629.png'),
                  SizedBox(width: 20),
                  Image.asset('assets/images/Path 5631.png'),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Image.asset('assets/images/Path 5630.png'),
                  ),
                ],
              ),

              SizedBox(height: 16),
              Text(
                """Lorem Ipsum is simply dummy text of the printing
        and typesetting industry. Lorem Ipsum is simply 
                            dummy text of the printing.""",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: ElevatedButton(
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
                      'All Episodes',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
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
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          """Each episode of The Daily Good begins with
a warm...""",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 1,
                color: Colors.black,
                margin: EdgeInsets.symmetric(horizontal: 20),
              ),
              SizedBox(height: 38),
              Row(
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      """Each episode of The Daily Good begins with
a warm...""",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
