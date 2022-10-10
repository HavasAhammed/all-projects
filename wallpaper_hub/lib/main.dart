import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_hub/theme/style.dart';
import 'package:wallpaper_hub/theme/theme_provider.dart';
import 'package:wallpaper_hub/views/home.dart';

// 563492ad6f9170000100000194a944f205cc47c7a3dda9e9b699246b

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});

  ThemeProvider themeChangeProvider =  ThemeProvider();

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
    // getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme = await themeChangeProvider.preference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_){
        return themeChangeProvider;
      },

      child: Consumer<ThemeProvider>(
        builder: (BuildContext context, value, child) {
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          
          theme: Styles.themeData(themeChangeProvider.darkTheme, context),
          title: 'Wallpaper Hub',
          home: Home(),
        );
  }),
    );
  }
}

