import 'package:Majannah/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Majannah/verification.dart';
import 'package:http/http.dart' as http;

import 'loading.dart';
import 'login_page.dart';

class Setup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SetupState();
  }
}

class SetupState extends State<Setup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool obscureTextNewPassword = true;
  bool obscureTextConfirmPassword = true;
  Future<void> signup(String email, String password,String confirmPassword) async {
    try {
      final response = await http.post(
        Uri.parse("https://reqres.in/api/register"), // Replace with your API endpoint
        body: {
          'email': email,
          'password': password,
          'confirmPassword' : confirmPassword,
        },
      );

      if (response.statusCode == 200) {
        print("Account created successfully");
        // Navigate to the next screen after successful login
        Get.to(LoginWidget(),transition: Transition.cupertino);
      } else {
        print("Sign-up failed");
        // Handle login failure, show an error message, etc.
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void toggleNewPasswordVisibility() {
    setState(() {
      obscureTextNewPassword = !obscureTextNewPassword;
    });
  }

  void toggleConfirmPasswordVisibility() {
    setState(() {
      obscureTextConfirmPassword = !obscureTextConfirmPassword;
    });
  }

  void handleSignup() {
    final email = emailController.text.toString();
    final password = passwordController.text.toString();
    final confirmPassword = confirmPasswordController.text.toString();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      showAlertDialog("Please enter your email and password.");
    } else if (password != confirmPassword) {
      showAlertDialog("Passwords do not match.");
    } else {
      // Call the signup function here
      // signup(email, password);
      Get.to(Verification(), transition: Transition.rightToLeft);
    }
  }

  void showAlertDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 55, left: 22.5),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          'assets/images/Path 5687.png',
                          width: 30,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Image.asset(
                  'assets/images/Mask Group 63.png',
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 80,
                ),
                Text('Set Up Your Account',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(
                  """Create a free account listen to meditations,
                poetry, music, and more.""",
                  style: TextStyle(fontSize: 14),
                ),
                // Email field
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 57,
                  width: 370,
                  child: TextField(
                    cursorColor: Colors.black,

                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email ID',
                      counterStyle: TextStyle(color: Color(0xFF918F8F).withOpacity(0.71)), // Define counterStyle with TextStyle
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
                  ),
                ),
                // Password field
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 57,
                  width: 370,
                  child: TextField(
                    cursorColor: Colors.black,

                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      counterStyle: TextStyle(color: Color(0xFF918F8F).withOpacity(0.71)), // Define counterStyle with TextStyle
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
                      suffixIcon: GestureDetector(
                        onTap: toggleNewPasswordVisibility,
                        child: Image.asset('assets/images/Path 5638.png'),
                      ),
                    ),
                    obscureText: obscureTextNewPassword,
                  ),
                ),
                // Confirm Password field
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 57,
                  width: 370,
                  child: TextField(
                    cursorColor: Colors.black,

                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      counterStyle: TextStyle(color: Color(0xFF918F8F).withOpacity(0.71)), // Define counterStyle with TextStyle
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
                      suffixIcon: GestureDetector(
                        onTap: toggleConfirmPasswordVisibility,
                        child: Image.asset('assets/images/Path 5638.png'),
                      ),
                    ),
                    obscureText: obscureTextConfirmPassword,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Continue button
                Container(
                  height: 57,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // Start from the top-center
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF114769), Color(0xFF092435)],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed:() {
                      signup(emailController.text.toString(),
                  passwordController.text.toString(),confirmPasswordController.text.toString());
                      Get.to(Signup(),transition: Transition.native);
                  },
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 16,
                      color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(370, 57),
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Terms & Conditions
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('By continuing, you agree to Podcats\'s'),
                      Text(
                        'Terms & conditions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // OR
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('or'),
                  ],
                ),
                SizedBox(height: 51),
                Container(
                  height: 57,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // Start from the top-center
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF000000), Color(0xFF545454)],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Path-5634-_1_ (1).png'),
                        SizedBox(width: 11.64),
                        Text(
                          'Sign in with Apple',
                          style: TextStyle(fontSize: 16,
                            color: Colors.white,),

                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 57,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // Start from the top-center
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFE16666), Color(0xFFA53030)],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Path 5635.png'),
                        SizedBox(width: 11.64),
                        Text(
                          'Sign-in with Google',
                          style: TextStyle(fontSize: 16,
                            color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 57,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // Start from the top-center
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF1877F2), Color(0xFF0C3C79)],
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Path 5636.png'),
                        SizedBox(width: 11.64),
                        Text(
                          'Sign-in with Facebook',
                          style: TextStyle(fontSize: 16,
                            color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Verification {
}
