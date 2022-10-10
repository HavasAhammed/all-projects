import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_get_post/fetch.dart';
import 'package:http_get_post/post.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
    MainPage({Key? key}) : super(key: key);
  
    @override
    State<MainPage> createState() => _MainPageState();
  }
  
  class _MainPageState extends State<MainPage> {
    int index = 0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );
    }

    Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

   return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.browser_updated_outlined),
          label: 'Fetch Data', 
          // style: style,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send),
          label: 'Post Data', 
          // style: style
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return FetchData();
      case 1:
        return PostData();
      default:
        return Container();
    }
  }
  }