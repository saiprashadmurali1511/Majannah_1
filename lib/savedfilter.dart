import 'package:Majannah/share.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Savedfilter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SavedfilterState();
  }
}

class SavedfilterState extends State<Savedfilter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10, right: 10),
                        child: Text(
                          'Sort by', // Add your desired heading here
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5), // Add margin
                        child: ListTile(
                          title: Text(
                            'Recently Date',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          onTap: () {
                            // Handle recently date action
                            Navigator.pop(context); // Close the bottom sheet
                          },
                        ),
                      ),
Divider(),
                      ListTile(
                        title: Text(
                          'Recently Date',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          // Handle share episode action
                          Navigator.pop(context); // Close the bottom sheet
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          'Show Name',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          // Handle current position action
                          Navigator.pop(context); // Close the bottom sheet
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              color: Color(0xFF5E718D),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Share());
}
