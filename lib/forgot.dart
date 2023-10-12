import 'package:Majannah/verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Sign_up.dart';
import 'login_page.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPasswordState();
  }
}

class ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  bool isEmailNotEmpty = false;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      Get.to(LoginWidget(), transition: Transition.leftToRight);
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/Path 5687.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset('assets/images/lock (2).png'),
                  SizedBox(height: 20),
                  Text(
                    "Forgot password",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    """Don't worry, enter your email address 
below and we will send you a link to
reset your password.""",
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 39),
                  SizedBox(
                    width: 370,
                    height: 57,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email ID',
                        labelStyle: TextStyle(
                          color: Color(0xFF918F8F).withOpacity(0.71),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Color(0xFFE3E1E1)), // Default border color
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Color(0xFFD1CDCD)), // Border color when not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Color(0xFFD1CDCD)), // Border color when focused
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          isEmailNotEmpty = value.isNotEmpty;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 57,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      gradient: isEmailNotEmpty
                          ? LinearGradient(
                        colors: <Color>[Color(0xFF114769), Color(0xFF092435)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                          : null, // Set the gradient when something is typed
                      color: !isEmailNotEmpty
                          ? Color(0xFF114769).withOpacity(0.22)
                          : null, // Set the color with opacity when nothing is typed
                    ),
                    child: ElevatedButton(
                      onPressed: isEmailNotEmpty
                          ? () {
                        Get.to(Verify(), transition: Transition.rightToLeft);
                      }
                          : null,
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(370, 57),
                        primary: Colors.transparent, // Make the button background transparent
                        elevation: 0, // Remove the button shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(ForgotPassword());
}
