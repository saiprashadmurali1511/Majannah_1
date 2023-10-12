import 'package:Majannah/History.dart';
import 'package:Majannah/phonenumber.dart';
import 'package:Majannah/playingmode.dart';
import 'package:Majannah/profile.dart';
import 'package:Majannah/saved.dart';
import 'package:Majannah/savedfilter.dart';
import 'package:Majannah/search.dart';
import 'package:Majannah/share.dart';
import 'package:Majannah/subschannels.dart';
import 'package:Majannah/top/topchannels.dart';
import 'package:Majannah/topepisodes.dart';
import 'package:Majannah/update_interests.dart';
import 'package:Majannah/updateprofile.dart';
import 'package:Majannah/verification.dart';
import 'package:Majannah/verifyphone.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
//import 'package:podcast/verification.dart';

import 'Channel_new.dart';
import 'Sign_up.dart';
import 'accountsetting.dart';
import 'carplay.dart';
import 'change_password.dart';
import 'channel.dart';
import 'contactus.dart';
import 'create_account.dart';
import 'culture.dart';
import 'deleteconfirmation.dart';
import 'downloads.dart';
import 'downloadsdelete.dart';
import 'explore.dart';
import 'forgot.dart';
import 'historyfilter.dart';
import 'home.dart';
import 'interests.dart';
import 'language.dart';
import 'library.dart';
import 'loading.dart';
import 'login.dart';
import 'login_page.dart';
import 'mult.dart';
import 'new_account.dart';
import 'notification.dart';
import 'nowplaying.dart';

//import 'forgot.dart';
//import 'login.dart';
//import 'login_page.dart';
void main() {
  runApp( Majannah());
}


class Majannah extends StatelessWidget {
  const Majannah({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Majannah',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),

    );
  }
}


