import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kerala_tourism/home_screen.dart';
import 'package:kerala_tourism/login_screen.dart';
import 'package:kerala_tourism/splash_screen.dart';
import 'package:kerala_tourism/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        else if(snapshot.hasData){
          return HomeScreen();
        }
        else if(snapshot.hasError){
          return Center(
            child: Text('Something went wrong!'));
        }
        else{
          return LoginScreen();
        }
        }
      
        ),
    );
  }
}