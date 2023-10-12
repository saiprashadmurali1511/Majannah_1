import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupState();
  }
}

class SignupState extends State<Signup> {
  List<TextEditingController> _controllers = List.generate(4, (_) => TextEditingController());
  List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    // Dispose of controllers and focus nodes to prevent memory leaks
    for (int i = 0; i < 4; i++) {
      _controllers[i].dispose();
      _focusNodes[i].dispose();
    }
    super.dispose();
  }

  void _onTextChanged(int index, String value) {
    if (value.length == 0 && index > 0) {
      // Automatically move to the previous TextField when erasing a number
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    } else if (value.length == 1) {
      if (index < 3) {
        // Move focus to the next TextField when a digit is entered
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        // Hide the keyboard when the last digit is entered
        FocusScope.of(context).unfocus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 57),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    // Navigation action
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset('assets/images/Path 5687.png'),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Image.asset(
                'assets/images/smartphone (1).png',
                alignment: Alignment.topCenter,
                height: 100, // Adjust the image height as needed
              ),
              SizedBox(height: 10), // Add spacing between image and text
              Text(
                "Verification Code",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Add spacing between text and description
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // You can adjust the text color
                    ),
                    children: [
                      TextSpan(
                        text: "We sent an email to ",
                      ),
                      TextSpan(
                        text: "mohammadbilal@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                        " with your verification code. A verified email\nallows you to recover your account if your\npassword is lost.",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the rows horizontally
                  children: List.generate(4, (index) {
                    return Row(
                      children: [
                        SizedBox(
                          height: 96,
                          width: 77,
                          child: Container(
                            height: 96,
                            width: 77,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE1E1E1), // Border color
                                width: 1.0, // Border width
                              ),
                              borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            ),
                            child: TextField(
                              controller: _controllers[index],
                              focusNode: _focusNodes[index],
                              style: TextStyle(
                                fontSize: 54,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onChanged: (value) => _onTextChanged(index, value),
                              decoration: null,
                            ),
                          ),
                        ),
                        if (index < 3) SizedBox(width: 10), // Add spacing between containers
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t get the code?',
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Resend code action
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF114769),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                """Or go back to the previous screen\nwith another email address.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
