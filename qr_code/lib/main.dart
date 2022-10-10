import 'package:flutter/material.dart';
import 'package:qr_code/pages/qr_create_page.dart';
import 'package:qr_code/pages/qr_scan_page.dart';

void main() {
  runApp(const MyApp());
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
      backgroundColor: Colors.black87,
      selectedItemColor: Colors.greenAccent,
      unselectedItemColor: Colors.white,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_scanner),
          label: 'Scan QR Code', 
          // style: style,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code),
          label: 'Create QR Code', 
          // style: style
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }
  Widget buildPages() {
    switch (index) {
      case 0:
        return QRScanPage();
      case 1:
        return QRCreatePage();
      default:
        return Container();
    }
  }
  }
  