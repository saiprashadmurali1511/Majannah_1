import 'package:Majannah/explore.dart';
import 'package:Majannah/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Topchannels extends StatefulWidget {
  @override
  State<Topchannels> createState() => _TopchannelsState();
}

class _TopchannelsState extends State<Topchannels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
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
                SizedBox(width: 65),
                Text(
                  'Top Channels/Shows',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 54),
                InkWell(
                  onTap: (){
                   Get.to(Search(),transition: Transition.rightToLeft);
                  },
                  child:Image.asset(
                    'assets/images/search-svgrepo-com (12).png',
                    height: 18.91,
                    width: 18.3,
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 20, // Cross-axis spacing
              runSpacing: 34, // Main-axis spacing
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Mask Group 134.png',
                          height: 150,
                          width: 145,
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Think and grow rich...',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Aliya Fatima',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF000000).withOpacity(0.56),
                        ),
                      ),
                      SizedBox(height: 7.5),
                      Text(
                        'Each episode of The\nDaily Good begins with\na warm...',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
