import 'package:Majannah/History.dart';
import 'package:Majannah/saved.dart';
import 'package:Majannah/settings.dart';
import 'package:Majannah/top/topchannels.dart';
import 'package:Majannah/topepisodes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Channel_new.dart';
import 'channel.dart';
import 'downloads.dart';
import 'explore.dart';
import 'home.dart';
import 'notification.dart';

void main() {
  runApp(Library());
}

class Library extends StatefulWidget {
  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  final ExploreController _controller = Get.put(ExploreController());
  List<String> imagePaths_5 = [
    'assets/images/Mask Group 134.png',
    'assets/images/Mask Group 133.png',
    'assets/images/Mask Group 135.png',
    // Add more image paths as needed
  ];
  List<String> imagePaths_6 = [
    'assets/images/Mask Group 128.png',
    'assets/images/Mask Group 129.png',
    'assets/images/Mask Group 127.png',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20), // Add left padding
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/Mask Group 63.png',
                        height: 47,
                        width: 47,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(Notifications(),transition:Transition.cupertino );
                          },
                          child:ImageIcon(
                            AssetImage('assets/images/notification-on-svgrepo-com.png'),
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            Get.to(Settings(),transition: Transition.leftToRight);
                          },
                        child:  Padding(
                            padding: EdgeInsets.only(right: 20), // Add right padding
                            child: ImageIcon(
                              AssetImage('assets/images/setting-svgrepo-com (4).png'),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Library',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'What you want to hear today?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {
Get.to(Downloads(),transition: Transition.leftToRight) ;             },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFCEE6F5),
                      minimumSize: Size(390, 74),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/download-cloud-svgrepo-com (1).png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Downloads',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              '4 Items',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/Path 5687.png',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: ElevatedButton(
                  onPressed: () {
                  Get.to(Saved(),transition: Transition.cupertino);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFCEE6F5),
                    minimumSize: Size(390, 74),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/download-cloud-svgrepo-com (1).png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saved',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '4 Items',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/Path 5687.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
                child: ElevatedButton(
                  onPressed: () {
                  Get.to(History(),transition: Transition.cupertino);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFCEE6F5),
                    minimumSize: Size(390, 74),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/download-cloud-svgrepo-com (1).png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '4 Items',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/Path 5687.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Top Channels/Shows',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          // Add your onPressed action here
                        },
                        child: GestureDetector(
                          onTap: (){
                            Get.to(Topchannels(),transition: Transition.rightToLeft);
                          },
                          child:Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13),
              Container(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment as needed
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.to(Channel_New(),transition: Transition.rightToLeft);
                              },
                              child: Image.asset(
                                imagePaths_5[index], // Use the imagePaths list
                                width: 145,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              'Think and Grow Rich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 23),
                              child: Text(
                                "Each episode of The\nDaily Good begins with\na warm...",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ) ,

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Suggestions For You',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          // Add your onPressed action here
                        },
                        child: GestureDetector(
                          onTap: (){
                          },
                          child:Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13),
              Container(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment as needed
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.to(Channel_New(),transition: Transition.rightToLeft);
                              },
                              child: Image.asset(
                                imagePaths_6[index], // Use the imagePaths list
                                width: 145,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              'Think and Grow Rich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 23),
                              child: Text(
                                "Each episode of The\nDaily Good begins with\na warm...",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ) ,
            ],
          ),
          ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _controller.currentIndex.value,
          onTap: (index) {
            _controller.changePage(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.offAll(Home(), transition: Transition.noTransition);
                },
                child: Image.asset(
                  'assets/images/Path 5621.png',
                  width: 17.74,
                  height: 17.74,
                  color: Color(0xFFC0CAD0),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.offAll(Explore(), transition: Transition.noTransition);
                },
                child: Image.asset(
                  'assets/images/search-svgrepo-com (12).png',
                  width: 17.74,
                  height: 17.74,
                ),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.offAll(Library(), transition: Transition.noTransition);
                },
                child: Image.asset(
                  'assets/images/lib.png',
                  width: 17.74,
                  height: 17.74,
                ),
              ),
              label: 'Library',
            ),
          ],
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF052D44)
          ),
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Color(0xFF052D44).withOpacity(0.25),
          ),
        ),
        ),
    );
  }
}


class LibraryController extends GetxController {
  final currentIndex = 1.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}

