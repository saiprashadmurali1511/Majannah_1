import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'create_account.dart';
import 'forgot.dart';
import 'loading.dart';
import 'interests.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // Retrieve email and password from SharedPreferences
    getEmailAndPassword();
  }

  void getEmailAndPassword() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('email');
    final password = prefs.getString('password');
    if (email != null && password != null) {
      setState(() {
        emailController.text = email;
        passwordController.text = password;
        isChecked = true; // Set isChecked to true to check the checkbox
      });
    }
  }

  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("https://reqres.in/api/login"), // Replace with your API endpoint
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print("Login successful");
        // Navigate to the next screen after successful login
        Get.to(Interests(), transition: Transition.native);
      } else {
        print("Login failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/Mask Group 63.png',
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 92,
                ),
                Text('Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text('Sign -in to your account',
                    style: TextStyle(fontSize: 16)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      SizedBox(
                        height: 57,
                        width: 370,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Email ID',
                            counterStyle: TextStyle(color: Color(0xFF918F8F).withOpacity(0.71)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Color(0xFFE3E1E1)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Color(0xFFD1CDCD)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Color(0xFFD1CDCD)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 57,
                        width: 370,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            counterStyle: TextStyle(color: Color(0xFF918F8F).withOpacity(0.71)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Color(0xFFE3E1E1)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Color(0xFFD1CDCD)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: Color(0xFFD1CDCD)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                side: BorderSide(
                                  color: Color(0xFFDEDEDE),
                                  width: 1.0,
                                ),
                                activeColor: Colors.grey,
                                value: isChecked,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked = val!;
                                  });
                                },
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Remember me',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          TextButton(
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Get.to(ForgotPassword(), transition: Transition.native);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      isLoading
                          ? CircularProgressIndicator()
                          : Container(
                        height: 57,
                        width: 370,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF114769), Color(0xFF092435)],
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            login(emailController.text.toString(),
                                passwordController.text.toString());
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 57),
                            primary: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: 2),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => Setup(),
                                    transition: Transition.rightToLeft);
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
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
                            begin: Alignment.topCenter,
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
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
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
                            begin: Alignment.topCenter,
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
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
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
                            begin: Alignment.topCenter,
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
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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

void main() {
  runApp(LoginWidget());
}
