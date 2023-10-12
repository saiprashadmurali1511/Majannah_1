import 'package:Majannah/home.dart';
import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(UpdateInterests());
}

class UpdateInterests extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UpdateInterestsState();
  }
}

class UpdateInterestsState extends State<UpdateInterests> {
  List<bool> buttonSelectedStates = List.filled(25, false);

  double buttonWidth = 120;
  double buttonHeight = 51;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 30,),
          Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: (){
                  Get.to(Settings(),transition: Transition.native);
                },
                child: Image.asset('assets/images/Path 5687.png'),

              ),
                  ),
                  SizedBox(width: 60,)
                ],
          ),
                SizedBox(
                  height: 120,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Update Your Interests',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Choose one or more.',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(0, 'News'),
                SizedBox(width: 10),
                buildElevatedButton(1, 'Culture'),
                SizedBox(width: 10),
                buildElevatedButton(2, 'Business'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(3, 'Mental Health'),
                SizedBox(width: 10),
                buildElevatedButton(4, 'Art'),
                SizedBox(width: 10),
                buildElevatedButton(5, 'Comedy'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(6, 'News'),
                SizedBox(width: 10),
                buildElevatedButton(7, 'Culture'),
                SizedBox(width: 10),
                buildElevatedButton(8, 'Business'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(9, 'Mental Health'),
                SizedBox(width: 10),
                buildElevatedButton(10, 'Art'),
                SizedBox(width: 10),
                buildElevatedButton(11, 'Comedy'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(12, 'News'),
                SizedBox(width: 10),
                buildElevatedButton(13, 'Culture'),
                SizedBox(width: 10),
                buildElevatedButton(14, 'Business'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(15, 'Mental Health'),
                SizedBox(width: 10),
                buildElevatedButton(16, 'Art'),
                SizedBox(width: 10),
                buildElevatedButton(17, 'Comedy'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(18, 'News'),
                SizedBox(width: 10),
                buildElevatedButton(19, 'Culture'),
                SizedBox(width: 10),
                buildElevatedButton(20, 'Business'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildElevatedButton(21, 'Mental Health'),
                SizedBox(width: 10),
                buildElevatedButton(22, 'Art'),
                SizedBox(width: 10),
                buildElevatedButton(23, 'Comedy'),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {
                Get.to(Home(),transition: Transition.native);              },
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Text color when the button is not pressed
                ),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(370, 57)),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (buttonSelectedStates.any((selected) => selected)) {
                      return Color(0xFF114769);
                    }
                    return Color(0xFFE0E1E2);
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildElevatedButton(int index, String text) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            buttonSelectedStates[index] = !buttonSelectedStates[index];
          });
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (buttonSelectedStates[index]) {
                return Color(0xFF114769);
              }
              return Color(0xFFFFFFFF);
            },
          ),
          // Add border color here
          side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) {
              return BorderSide(
                color: Color(0xFFE0E1E2), // Your desired border color
              );
            },
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: buttonSelectedStates[index] ? Colors.white : Color(0xFF6E6E6E),
          ),
        ),
      ),
    );
  }
}
