import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 56),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(Settings(), transition: Transition.cupertino);
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/images/Path 5687.png'),
                      SizedBox(width: 121),
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 362,
                    height: 284, // Adjust the height as needed
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFE3E1E1),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'Type here...',
                        border: InputBorder.none, // Remove the default input border
                        contentPadding: EdgeInsets.all(16), // Adjust padding as needed
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 57,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF114769),
                        Color(0xFF092435),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button onPressed logic here
                    },
                    child: Text('Send Using Gmail',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(370, 57),
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
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
