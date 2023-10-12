import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'explore.dart';
import 'library.dart';
import 'notification.dart';
import 'settings.dart';

void main() {
  runApp(GetMaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _controller = Get.put(HomeController());
  List<String> imagePaths = [
    'assets/images/Mask Group 64.png',
    'assets/images/Mask Group 65.png',
    'assets/images/Mask Group 66.png',
    // Add more image paths as needed
  ];
  List<String> imagePaths_1 = [
    'assets/images/Mask Group 64.png',
    'assets/images/Mask Group 65.png',
    'assets/images/Mask Group 66.png',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/Mask Group 63.png',
                      height: 47,
                      width: 47,
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigate to the Notifications screen
                          },
                          child: ImageIcon(
                            AssetImage('assets/images/notification-on-svgrepo-com.png'),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            // Navigate to the Settings screen
                          },
                          child: ImageIcon(
                            AssetImage('assets/images/setting-svgrepo-com (4).png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Continue Listening',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 390, // Adjusted width
                height: 127,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xFF032330), Color(0xFF11486A)],
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Mask Group 40.png',
                          height: 84,
                          width: 84,
                        ),
                        SizedBox(width: 9),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: RichText(
                                text: TextSpan(
                                  text: "The mind-gut connection...",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset('assets/images/Path 5661.png'),
                                SizedBox(width: 5),
                                Text(
                                  'Halima Fatima',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 90),
                                Wrap(
                                  children: [
                                    Image.asset(
                                      'assets/images/Path 5657.png',
                                      width: 29,
                                      height: 29,
                                      color: Colors.white,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 3),
                                Text(
                                  '12 min 8 sec left',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFFFFFFF).withOpacity(0.3),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 200, // Adjust the desired width here
                              child: LinearProgressIndicator(
                                value: 0.4, // Adjust the progress value
                                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFFFFFF)), // Specify the desired color
                                backgroundColor: Colors.grey, // Background color
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'New Podcasts You Follow',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child:Image.asset(
                              imagePaths[index], // Use the imagePaths list
                              width: 145,
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 27),
                            child: Text(
                              'Think and Grow Rich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 84),
                            child: Text(
                              'Aliya Fatima',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000).withOpacity(0.56),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 23),
                            child: Text(
                              "How the hidden\nconversation within...",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Podcast Suggestions',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset(
                              imagePaths_1[index], // Use the imagePaths list
                              width: 145,
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 27),
                            child: Text(
                              'Think and Grow Rich',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 84),
                            child: Text(
                              'Aliya Fatima',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF000000).withOpacity(0.56),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 23),
                            child: Text(
                              "How the hidden\nconversation within...",
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
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: List.generate(3, (index) {
                  return Column(
                    children: [
                      SizedBox(
                        width: 390,
                        height: 98,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image.asset(
                              'assets/images/culture.png',
                              width: 390,
                              height: 98,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5, bottom: 5),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Culture',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xFF042330),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFFFFFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10), // Add this SizedBox to create the gap
                    ],
                  );
                }),
              ),
            ),


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
                width: 25,
                height: 24,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Get.offAll(Explore(), transition: Transition.noTransition);
              },
              child: Image.asset(
                'assets/images/search-svgrepo-com (12).png',
                width: 25,
                height: 24,
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
                width: 25,
                height: 24,
              ),
            ),
            label: 'Library',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color(0xFF052D44),
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          color: Color(0xFF052D44).withOpacity(0.25),
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
