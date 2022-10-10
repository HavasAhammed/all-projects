import 'package:flutter/material.dart';
 abstract class Styles {
  static const secondaryColor = Colors.black;
   
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      textTheme: TextTheme(
        headline5: isDarkTheme ? TextStyle(color: Colors.white, fontWeight: FontWeight.w800) : TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        headline6: isDarkTheme ? TextStyle(color: Colors.blue, fontWeight: FontWeight.w600) : TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)
      ),

      iconTheme: IconThemeData(
        color:  isDarkTheme ? Colors.white60 : Colors.black54,
      ),
      appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: isDarkTheme ? Colors.white : Colors.amber 
        ),
        elevation: isDarkTheme ? 0 : 0,
        iconTheme: IconThemeData(
          color: isDarkTheme ? Colors.white : Colors.black
        ),
        backgroundColor: isDarkTheme ? Colors.transparent : Colors.transparent
      ),
    
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: isDarkTheme ? Colors.white60 : Colors.black54),
        
      ),
      // primarySwatch: isDarkTheme ? Colors.red : Colors.green
      // canvasColor: isDarkTheme ? Colors.red : Colors.green
      // cardColor: isDarkTheme ? Colors.red : Colors.green
      // colorScheme: ColorScheme(brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // primary: isDarkTheme ? Colors.red : Colors.green
      // )
      // theme
    );
    
  }
}