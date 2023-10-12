import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Channel_new.dart';
import 'channel.dart';
import 'explore.dart';

class Culture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 22.5),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next class using GetX
                      Get.to(Explore());
                    },
                    child: Image.asset('assets/images/Path 5687.png'),
                  ),
                  SizedBox(width: 141),
                  Text(
                    'Culture',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Topics List',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 180),
                  Align(
                    alignment: Alignment.centerRight, // Align "See All" to the right
                    child: TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next class using GetX
                      Get.to(Channel_New());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Image.asset('assets/images/Mask Group 136.png',
                      height: 211,
                      width: 390,),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Do something when the button is pressed.
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Mind Set Channel Name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '   Each episode of The Daily Good begins...',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFFFF8F8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              // Add a common SingleChildScrollView for both images and text here
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 130.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                            'Each episode of The\nDaily Good begins with\na warm...',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 132.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 131.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Suggestions For You',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 80),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              // Add a common SingleChildScrollView for the next set of images and text here
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 130.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Each episode of The\nDaily Good begins with\na warm...',

                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 132.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 131.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Top Channels/Shows',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 80),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),

              // Add a common SingleChildScrollView for the next set of images and text here
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel_New());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 130.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Each episode of The\nDaily Good begins with\na warm...',

                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 132.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 131.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Top Episodes',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 142),
                  Padding(padding: EdgeInsets.only(right: 10),
                  child:TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              // Add a common SingleChildScrollView for the last set of images and text here
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 130.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                            Padding(padding: EdgeInsets.only(left: 20),
                             child: Text(
                               'Each episode of The\nDaily Good begins with\na warm...',

                               style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 132.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the next class using GetX
                        Get.to(Channel());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Mask Group 131.png',
                            width: 145,
                            height: 150,
                          ),
                          SizedBox(height: 13),
                          Text(
                            'Episode Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Each episode of The\nDaily Good begins with\na warm...',

                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

