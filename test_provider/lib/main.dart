import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/test_provider.dart';
import 'package:test_provider/tset_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: TestProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TestScreen(),
    )
    );
  }
}

