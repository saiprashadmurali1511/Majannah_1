import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nowplaying.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define your initial and final times here
    final DateTime initialTime = DateTime.now();
    final DateTime finalTime = initialTime.add(Duration(minutes: 45)); // 30 minutes in the future

    // Calculate progress as a fraction of elapsed time to total time
    double calculateProgress() {
      final currentTime = DateTime.now();
      final totalTime = finalTime.difference(initialTime).inMilliseconds.toDouble();
      final elapsedTime = currentTime.difference(initialTime).inMilliseconds.toDouble();

      return elapsedTime / totalTime;
    }

    // Format time as a string
    String formatTime(DateTime time) {
      return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
    }

    final progressValue = calculateProgress().clamp(0.0, 1.0); // Ensure the progress value is between 0 and 1

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'Share',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/Mask Group 132.png',
              height: 165,
              width: 160,
            ),
            SizedBox(height: 13),
            Text(
              'Mind Set Channel Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 13),
            Text(
              'Think and grow rich...',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: progressValue,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Use AlwaysStoppedAnimation for valueColor
              minHeight: 5.0,
            ),
            SizedBox(height: 10), // Adjust the gap between the progress bar and time displayers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${formatTime(initialTime)}',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '${formatTime(finalTime)}',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 60), // Adjust the gap between the time displayers and the next button
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF114769), Color(0xFF092435)],
                ),
              ),
              child: ClipOval(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/play-button-svgrepo-com (1).png',
                    width: 63,
                    height: 63,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60), // Adjust the gap between the play button and the next button
            SizedBox(height: 20),
            Container(
              height: 57,
              width: 370,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF114769),
                    Color(0xFF092435),
                  ],
                ),
                borderRadius: BorderRadius.zero,
              ),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 428,
                        width: 430,
                        color: Color(0xFFF2F1EC),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset('assets/images/Group 129.png'),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15),
                                    Text(
                                      'Mohammad Bilal',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Podcast App',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft, // Adjust alignment as needed
                                  child: Image.asset(
                                    'assets/images/close-svgrepo-com (2).png',
                                    height: 24, // Adjust height as needed
                                    width: 24, // Adjust width as needed
                                  ),
                                ),
                              ],
                            ),
                            // Add more widgets here
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'Share',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 57),
                  primary: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
               ElevatedButton(
                onPressed: () {
                  Get.to(NowPlaying(),transition: Transition.native);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(370, 57),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(
                      color: Color(0xFF9EB8C8),
                    )
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
