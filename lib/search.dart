import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0), // Add left padding here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child:Image.asset('assets/images/close-square-svgrepo-com.png',
                    height: 50.5,
                    width: 50.5,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF114769),
                  ),
                ),
                SizedBox(height: 3,),
                Text(
                  'What you want to hear today?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF114769),
                  ),
                ),
                SizedBox(height: 10),
                SearchBar(
                  hintText: 'Search podcast',
                ),
                SizedBox(height: 38,),
                Text(
                  'Categories By Interest',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF114769),
                  ),
                ),
              SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 49,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFD5CFCF),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                     child: Text('History',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),),
                    ),
                  ),
                ),
                SizedBox(height: 6,),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 49,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFD5CFCF),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                     child: Text('Literature',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),),
                    ),
                  ),
                ),
                SizedBox(height: 6,),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 49,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFD5CFCF),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                     child: Text('News',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),),
                    ),
                  ),
                ),
                SizedBox(height: 6,),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 49,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFD5CFCF),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                     child: Text('Religion',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),),
                    ),
                  ),
                ),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 49,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        color: Color(0xFFD5CFCF),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                     child: Text('Culture',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),),
                    ),
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
