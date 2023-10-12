import 'package:flutter/material.dart';

void main() {
  runApp(DeleteConfirmDialog());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeleteConfirmDialog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DeleteConfirmDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 5,),
                    Image.asset('assets/images/Path 5684.png'),
                    SizedBox(height: 16.0),
                    Text(
                      'Are You Sure?',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Do you really want to delete it?',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add your 'Yes' button logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFB7D5E8), // Background color for 'Yes'
                          ),
                          child: Text('Yes'),
                        ),
                        SizedBox(width: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            // Add your 'No' button logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEEEEEE), // Background color for 'No'
                          ),
                          child: Text('No'),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          color: Color(0xFFCEE6F5),
        )
      ),
    );
  }
}