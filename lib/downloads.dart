import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'downloadsdelete.dart';
import 'library.dart';

class Downloads extends StatefulWidget {
  @override
  DownloadsState createState() => DownloadsState();
}

class DownloadsState extends State<Downloads> {
  bool _showConfirmationDialog = false; // To control the visibility of the confirmation dialog

  // Function to show the confirmation dialog
  void _showDeleteConfirmationDialog() {
    setState(() {
      _showConfirmationDialog = true;
    });
  }

  // Function to hide the confirmation dialog
  void _hideDeleteConfirmationDialog() {
    setState(() {
      _showConfirmationDialog = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to Library screen
                      Get.to(Library(), transition: Transition.rightToLeft);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'assets/images/Path 5687.png', // Replace with your image path
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 110,),
                  Text(
                    'My Library',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(Downloadsdelete(), transition: Transition.noTransition);
                          },
                          child: Image.asset(
                            'assets/images/pencil-ui-svgrepo-com.png',
                            height: 16.94,
                            width: 16.94,
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
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
                                          'Recently Download',
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
                                        // Handle share episode action
                                        Navigator.pop(context); // Close the bottom sheet
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Image.asset(
                            'assets/images/filter-lines-svgrepo-com.png',
                            color: Color(0xFF114769,),
                            height: 18.91,
                            width: 18.3,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 13),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Downloads',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Text(
                      '3 Items',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 43),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true, // Important: Add this to prevent errors
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Image.asset(
                                  'assets/images/Mask Group 132.png',
                                  height: 77,
                                  width: 77,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 14),
                                  Text(
                                    '18th June 2023',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000).withOpacity(0.56),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Daily News Ep. #11',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      SizedBox(width: 74),
                                      GestureDetector(
                                        onTap: _showDeleteConfirmationDialog,
                                        child: Image.asset(
                                          'assets/images/Path 5683.png',
                                          height: 33,
                                          width: 33,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '12 min 8 sec left',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Padding(
                            padding: const EdgeInsets.only(right: 105),
                            child: Column(
                              children: [
                                Text(
                                    """Each episode of The Daily Good begins with
a warm...""",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                      Divider(
                                   color: Colors.blueAccent,
                                 ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        // Add a confirmation dialog
        floatingActionButton: _showConfirmationDialog
            ? AlertDialog(
          title: Column(
            children: [
              Image.asset(
                'assets/images/Path 5683.png', // Add your image asset path
                height: 50, // Adjust the image height as needed
              ),
              SizedBox(height: 10),
              Text(
                'Are you sure?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Do you really want to delete it?',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFB7D5E8), // Set the background color for Yes button
              ),
              onPressed: () {
                // Handle the 'Yes' button press
                // Add your delete logic here
                _hideDeleteConfirmationDialog(); // Hide the dialog
              },
              child: Text('Yes'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEEEEEE), // Set the background color for No button
              ),
              onPressed: () {
                // Handle the 'No' button press
                _hideDeleteConfirmationDialog(); // Hide the dialog
              },
              child: Text('No'),
            ),
          ],
        )
            : null, // Show the dialog only when _showConfirmationDialog is true
      ),
    );
  }
}
