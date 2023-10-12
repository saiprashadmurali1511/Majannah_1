import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';

import 'Sign_up.dart';
import 'accountsetting.dart';


class Verifyphone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VerifyphoneState();
  }
}

class VerifyphoneState extends State<Verifyphone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            // Align the children at the top center
            children: [
              SizedBox(height: 50,),
             Padding(padding: EdgeInsets.only(left: 20),
             child: GestureDetector(
               onTap: (){
                 Get.to(Settings(),transition: Transition.cupertino);
               },
               child: Image.asset('assets/images/Path 5687.png'),
             ),
             ),
              Positioned(
                top: 200,
                child: Text(
                  "Verification Code",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 100.0)),
                  Positioned(
                    top: 175,
                    child: Text(
                      """  Enter your verification code that we sent
          you through your phone number.""",
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center, // Center the text
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 370,
                    height: 57,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Verification Code',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 57,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Account(),transition: Transition.rightToLeft);
                      },
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(370, 57),
                        primary: Color(0xFF114769),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 68,),
                  Text('Send a code again',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),)
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Verifyphone());
}
