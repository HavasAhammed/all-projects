import 'package:crud_sqflite/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ToDo List',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomeScreen(),
    
    );
  }
}