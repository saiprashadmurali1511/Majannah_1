import 'package:Majannah/channel.dart';
import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Subschannels extends StatefulWidget {
  @override
  SubschannelsState createState() => SubschannelsState();
}

class SubschannelsState extends State<Subschannels> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Settings(), transition: Transition.rightToLeft);
                      },
                      child: Image.asset('assets/images/Path 5687.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 96),
                      child: Text(
                        'Subscribed Channels',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23),
              Column(
                children: List.generate(4, (index) => buildsubschannelItem()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildsubschannelItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                  'Channel Name',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  """Each episode of The Daily Good begins\nwith a warm...""",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF000000),
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
      ],
    );
  }
}
