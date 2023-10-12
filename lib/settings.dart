import 'package:Majannah/accountsetting.dart';
import 'package:Majannah/contactus.dart';
import 'package:Majannah/home.dart';
import 'package:Majannah/language.dart';
import 'package:Majannah/login_page.dart';
import 'package:Majannah/profile.dart';
import 'package:Majannah/settings_notifications.dart';
import 'package:Majannah/subschannels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isDarkModeEnabled = false; // Add a boolean to track the toggle state

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
                Row(
                  children: [
                    SizedBox(height: 50,),
                    Padding(padding: EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(Home(),transition: Transition.cupertino);
                        },
                        child: Image.asset('assets/images/Path 5687.png'),
                      ),
                    ),
                    SizedBox(height: 120,),
                    SizedBox(width: 136,),
                    Text('Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(Profile(),transition: Transition.native);

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
                            'assets/images/Path 5692.png',
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
                    onPressed: () {
                      Get.to(Account(),transition: Transition.native);

                    },
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
                            'assets/images/Path 5694.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Account Setting',
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
                    onPressed: () {
                      Get.to(Language(),transition: Transition.native);

                    },
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
                            'assets/images/Path 5700.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Language',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/Path 5691.png',
                          height: 24,
                          width: 24,
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
                              'Dark Mode',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Switch(
                          value: isDarkModeEnabled,
                          onChanged: (bool newValue) {
                            setState(() {
                              isDarkModeEnabled = newValue;
                            });
                            // You can add logic here to enable or disable dark mode
                          },
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
                            'assets/images/Path 5697.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Interests',
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
                    onPressed: () {
                      Get.to(Subschannels(),transition: Transition.native);

                    },
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
                            'assets/images/Path 5698.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Subscribed Channels',
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
                    onPressed: () {
                      Get.to(SetNot(),transition: Transition.native);
                    },
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
                            'assets/images/Path 5693.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Notifications',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
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
                    onPressed: () {
                      Get.to(Contact(),transition: Transition.native);

                    },
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
                            'assets/images/Path 5699.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact',
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
                    onPressed: () {
                      Get.to(LoginWidget(),transition: Transition.native);

                    },
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
                            'assets/images/Path 5696.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Logout',
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
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
