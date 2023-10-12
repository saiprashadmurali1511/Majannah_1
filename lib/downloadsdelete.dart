import 'package:Majannah/downloads.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'deleteconfirmation.dart';
import 'library.dart';

class Downloadsdelete extends StatefulWidget {
  @override
  DownloadsdeleteState createState() => DownloadsdeleteState();
}

class DownloadsdeleteState extends State<Downloadsdelete> {
  bool isChecked = false;
  bool isChecked_1 = false;
  bool isChecked_2 = false;
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
        body: Center(
          child: SingleChildScrollView(
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
                    SizedBox(width: 100,),
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
                              Get.to(Downloadsdelete(), transition: Transition.leftToRight);
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
                      padding: EdgeInsets.only(left: 20), // Add left padding
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
                      padding: EdgeInsets.only(
                        right: 20.0,
                      ), // Add padding to the right side
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3, // Set the itemCount to 3
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Color(0xFF114769),
                                  value: index == 0 ? isChecked : (index == 1 ? isChecked_1 : isChecked_2),
                                  onChanged: (val) {
                                    setState(() {
                                      if (index == 0) {
                                        isChecked = val!;
                                      } else if (index == 1) {
                                        isChecked_1 = val!;
                                      } else {
                                        isChecked_2 = val!;
                                      }
                                    });
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
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
                                        SizedBox(width: 44),
                                        GestureDetector(
                                          onTap: _showDeleteConfirmationDialog,
                                          child:Image.asset(
                                            'assets/images/Path 5683.png',
                                            height: 33,
                                            width: 33,
                                          ),
                                        )
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
                            GestureDetector(
                              onTap: () {
                                Get.to(MyApp(), transition: Transition.downToUp);
                              },
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
                                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                child:  Divider(
                                  color: Colors.blueAccent,
                                ),
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
        ),
          floatingActionButton: _showConfirmationDialog
              ? AlertDialog(
            backgroundColor: Color(0xFFFFFFFF),
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
              Container(
                width: 104,
              height: 39,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFB7D5E8), // Set the background color for Yes button
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5.0),
                 )
                  ),
                  onPressed: () {
                    // Handle the 'Yes' button press
                    // Add your delete logic here
Get.to(Downloads(),transition: Transition.noTransition);                },
                  child: Text('Yes',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                ),
              ),
              Container(
                width: 104,
                height: 39,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEEEEEE), // Set the background color for No button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
                  ),
                  onPressed: () {
                    // Handle the 'No' button press
                    _hideDeleteConfirmationDialog(); // Hide the dialog
                  },
                  child: Text('No',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                ),
              ),
            ],
          )
              : null, // S
        ),
    );
  }
}
