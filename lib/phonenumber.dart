import 'package:Majannah/verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package

// Import your custom widgets if necessary
import 'login_page.dart';
import 'settings.dart'; // Make sure to import 'settings.dart' if it's in a separate file

class Phonenum extends StatefulWidget {
  @override
  PhonenumState createState() => PhonenumState();
}

class PhonenumState extends State<Phonenum> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(Settings(), transition: Transition.cupertino);
                      },
                      child: Image.asset('assets/images/Path 5687.png'),
                    ),
                  ),
                  SizedBox(width: 81),
                  Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 57,
                width: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF114769), Color(0xFF092435)],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the 'Verify' widget when the button is pressed
                    Get.to(Verify(), transition: Transition.rightToLeft);
                  },
                  child: Text(
                    'Verify Phone Number',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
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
    );
  }
}
