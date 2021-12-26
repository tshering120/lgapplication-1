// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blueGrey,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.white, size: 40),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            color: Color(0xffffffff),
            height: 1.6,
            fontSize: 16,
          ),
        ),
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Color(0xffe8a348), size: 40),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(
            color: Color(0xff000000),
          ),
        ),
      ));
}
