import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/wallpaper.dart';
import 'package:wallpaper_app/wllpaper_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(
        value: WallpaperProvider())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark
        ),
        home: WallpaperScreen(),
      ),
    );
  }
}

