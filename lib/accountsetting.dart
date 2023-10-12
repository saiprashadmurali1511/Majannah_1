import 'package:Majannah/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(Home(), transition: Transition.cupertino);
                        },
                        child: Image.asset('assets/images/Path 5687.png'),
                      ),
                    ),
                    SizedBox(width: 91,),
                    Text(
                      'Account Setting',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFCEE6F5),
                      minimumSize: Size(390, 74),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/Path 5707.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Profile',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
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
                            'assets/images/Path 5705.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFCEE6F5),
                      minimumSize: Size(390, 74),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/Path 5706.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFCEE6F5),
                      minimumSize: Size(390, 74),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/Path 5695.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email Address',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'mohammadbilal@gmail.com',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset('assets/images/check-circle-svgrepo-com (3).png')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
