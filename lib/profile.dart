import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(height: 120,),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(Settings(),transition: Transition.native);
                      },
                      child: Image.asset('assets/images/Path 5687.png'),
                    ),
                  ),
                  SizedBox(width: 126,),
                  Text(
                    'My Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Center(
                child: Image.asset(
                  'assets/images/Profile.png',
                  width: 129,
                  height: 129,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Mohammad Bilal',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blueAccent,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date of birth',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '15/06/1983',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blueAccent,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blueAccent,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email ID',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'mohammadbilal@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blueAccent,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact No.',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+966 1234567890',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF000000),
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
