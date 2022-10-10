import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static String title = 'Custom & Google Fonts';

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);

  // final title = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('THIS',
            style: GoogleFonts.shizuru(
              textStyle: style),
              ),
              Text('GOOGLE',
            style: GoogleFonts.lobster(
              textStyle: style,
              color: Colors.green),
              ),
              Text('Custom Font',
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'SmoochSans',
              )
              ),
          ],
        ),
      ),
    );
  }
}
