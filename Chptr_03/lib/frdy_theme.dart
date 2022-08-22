import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrdyTheme {
  static TextTheme lightTextTheme = TextTheme(
      bodyText1: GoogleFonts.acme(
          fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.black),
      headline1: GoogleFonts.acme(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: GoogleFonts.acme(
          fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.black),
      headline3: GoogleFonts.acme(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline6: GoogleFonts.acme(
          fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black));

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.acme(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline1: GoogleFonts.acme(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: GoogleFonts.acme(
        fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
    headline3: GoogleFonts.acme(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    headline6: GoogleFonts.acme(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: lightTextTheme,
      // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.grey[900],
      textTheme: darkTextTheme,
      // colorScheme:
      //     ColorScheme.fromSwatch().copyWith(secondary: Colors.green[600]),
    );
  }
}
