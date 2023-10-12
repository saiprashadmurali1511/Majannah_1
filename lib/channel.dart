import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Channel_new.dart';
import 'explore.dart';

class Channel extends StatefulWidget {
  @override
  ChannelState createState() => ChannelState();
}

class ChannelState extends State<Channel> {
  bool isSubscribed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                 Row(
                   children: [
                     Align(
                       alignment: Alignment.topLeft,
                       child: InkWell(
                         onTap: () {
                           Get.to(Explore(), transition: Transition.rightToLeft);
                         },
                         child: Padding(
                           padding: EdgeInsets.only(left: 20),
                           child: Image.asset('assets/images/Path 5687.png'),
                         ),
                       ),
                     ),
                     SizedBox(width: 136,),
                     Text(
                       'Channel',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                   ],
                 ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/Mask Group 134.png'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mind Set Channel Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Path 5661.png'),
                        Text(
                          'Aliya Fatima',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xFF000000).withOpacity(0.56),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isSubscribed = !isSubscribed;
                      });
                    },
                    child: Text(
                      isSubscribed ? 'Subscribed' : 'Subscribe',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF114769),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Allow the row to occupy less space
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
                            minimumSize: Size(68, 36), // Reduced button width
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
                            minimumSize: Size(80, 36), // Reduced button width
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
                            minimumSize: Size(94, 36), // Reduced button width
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 43),
                    child: Text('All Episodes',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),),
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
        ],
            ),
      ),
        ],
      ),
    ),
    );
  }
}

void main() {
  runApp(Channel());
}
