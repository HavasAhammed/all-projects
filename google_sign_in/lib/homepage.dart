import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/home_screen.dart';
import 'package:google_sign_in/home_screen2.dart';
import 'package:google_sign_in/login_screen.dart';

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
          return HomeScreen2();
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