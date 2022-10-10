// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kerala_tourism/Bottom%20Tab/notifications.dart';
import 'package:kerala_tourism/Bottom%20Tab/settings.dart';
import 'package:kerala_tourism/Menu_Bar/home/home.dart';
import 'package:kerala_tourism/Menu_Bar/photos.dart';
import 'package:kerala_tourism/Menu_Bar/user_profile.dart';
import 'package:kerala_tourism/Updates/update_user_profile.dart';
import 'package:kerala_tourism/Updates/update_user_profile2.dart';
import 'package:kerala_tourism/forgotpswd.dart';
import 'package:kerala_tourism/google_sign_in.dart';
import 'package:kerala_tourism/home_page.dart';
import 'package:kerala_tourism/home_screen2.dart';
import 'package:kerala_tourism/login_screen.dart';
import 'package:kerala_tourism/navbar.dart';
import 'package:kerala_tourism/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences sharedPreferences;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: 
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KERALA TOURISM',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        // home: SplashScreen(),
        initialRoute: '/',
        routes: {
          '/' : (context) => SplashScreen(),
          '/login' : (context) => LoginScreen()
        },
      ),
    );
  }
}

