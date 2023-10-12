import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetNot extends StatefulWidget {
  @override
  _SetNotState createState() => _SetNotState();
}

class _SetNotState extends State<SetNot> {
  bool isDarkModeEnabled = false;

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
                      SizedBox(width: 110),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
                    ),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Subscribed Channels Updates',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                        ),
                        Spacer(),
                        Switch(
                          value: isDarkModeEnabled,
                          onChanged: (bool newValue) {
                            setState(() {
                              isDarkModeEnabled = newValue;
                            });
                            // Add your logic here to enable or disable dark mode
                          },
                        ),
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
