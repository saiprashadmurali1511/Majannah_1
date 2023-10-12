import 'package:Majannah/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class changepas extends StatefulWidget {
  @override
  changepasState createState() => changepasState();
}

class changepasState extends State<changepas> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
  TextEditingController();
  bool obscureTextOldPassword = true;
  bool obscureTextNewPassword = true;
  bool obscureTextConfirmPassword = true;

  void toggleOldPasswordVisibility() {
    setState(() {
      obscureTextOldPassword = !obscureTextOldPassword;
    });
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
                  'Old Password',
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
                  controller: oldPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Enter Old Password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        toggleOldPasswordVisibility();
                      },
                      child: Image.asset('assets/images/Path 5638.png'),
                    ),
                  ),
                  obscureText: obscureTextOldPassword,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'New Password',
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
                  controller: newPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Enter New Password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        toggleNewPasswordVisibility();
                      },
                      child: Image.asset('assets/images/Path 5638.png'),
                    ),
                  ),
                  obscureText: obscureTextNewPassword,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Confirm Password',
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
                  controller: confirmNewPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Enter Confirm New Password',
                    border: OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        toggleConfirmPasswordVisibility();
                      },
                      child: Image.asset('assets/images/Path 5638.png'),
                    ),
                  ),
                  obscureText: obscureTextConfirmPassword,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 370,
                child: ElevatedButton(
                  onPressed: () {
                    // Check if passwords match before navigating to LoginWidget
                    String oldPassword = oldPasswordController.text;
                    String newPassword = newPasswordController.text;
                    String confirmNewPassword =
                        confirmNewPasswordController.text;
                    if (oldPassword.isEmpty ||
                        newPassword.isEmpty ||
                        confirmNewPassword.isEmpty) {
                      // Show an error message if any field is empty
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Empty Fields'),
                            content: Text('Please fill in all fields.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (newPassword == confirmNewPassword) {
                      // Passwords match, navigate to LoginWidget
                      Get.to(() => LoginWidget());
                    } else {
                      // Passwords do not match, show an error message
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Password Mismatch'),
                            content:
                            Text('The entered passwords do not match.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 57),
                    primary: Colors.transparent,
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

void main() {
  runApp(changepas());
}
