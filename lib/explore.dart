import 'package:Majannah/Channel_new.dart';
import 'package:Majannah/culture.dart';
import 'package:Majannah/top/topchannels.dart';
import 'package:Majannah/topepisodes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'channel.dart';
import 'home.dart';
import 'library.dart';
import 'notification.dart';
import 'settings.dart';

void main() {
  runApp(Explore());
}

class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final ExploreController _controller = Get.put(ExploreController());
  List<String> imagePaths = [
    'assets/images/Mask Group 130.png',
    'assets/images/Mask Group 132.png',
    'assets/images/Mask Group 131.png',
    // Add more image paths as needed
  ];
  List<String> imagePaths_3 = [
    'assets/images/Mask Group 134.png',
    'assets/images/Mask Group 134.png',
    'assets/images/Mask Group 135.png',
    // Add more image paths as needed
  ];
  List<String> imagePaths_4 = [
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
                    padding: EdgeInsets.only(left: 20),
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
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(Notifications(), transition: Transition.rightToLeft);
                            },
                            child: ImageIcon(
                              AssetImage('assets/images/notification-on-svgrepo-com.png'),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              Get.to(Settings(), transition: Transition.rightToLeft);
                            },
                            child: ImageIcon(
                              AssetImage('assets/images/setting-svgrepo-com (4).png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Explore',
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 49,
                  width: double.infinity, // Use double.infinity for full width
                  color: Color(0xFF114769).withOpacity(0.09),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search podcast, author, etc...',
                      prefixIcon: ImageIcon(
                        AssetImage('assets/images/Path 5640.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Add left padding here
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.to(Culture(),transition: Transition.rightToLeft);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFF0E7F2),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                            ),
                            child: Image.asset('assets/images/people-svgrepo-com.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Culture',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF9EED9),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/people-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE5EAFF),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/writing-tool-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Literature',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFDBDB),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/news-paper-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'News',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE1F9E8),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(15),
                          ),
                          child: Image.asset('assets/images/people-svgrepo-com.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Religion',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Top Episodes',
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
                            Get.to(Topepisodes(),transition: Transition.rightToLeft);
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
                                imagePaths[index], // Use the imagePaths list
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
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 1.0,right: 20),
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
                                imagePaths_3[index], // Use the imagePaths list
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
                            if(index<3)  SizedBox(width: 25,),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Suggestions for You',
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
                            Get.to(Topepisodes(),transition: Transition.rightToLeft);
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
                              child:  Image.asset(
                                imagePaths_4[index], // Use the imagePaths list
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
              ),
              // Repeat the above pattern for other sections
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
                  'assets/images/search2.png',
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
                  'assets/images/library-svgrepo-com.png',
                  width: 17.74,
                  height: 17.74,
                ),
              ),
              label: 'Library',
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreController extends GetxController {
  final currentIndex = 1.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
