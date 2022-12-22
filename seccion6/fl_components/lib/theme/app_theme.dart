import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.purpleAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      //FloatingActionButton Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      //ElevatedButtons Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );
}
