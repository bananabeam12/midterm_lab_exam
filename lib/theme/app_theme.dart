import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 0, 110, 201);
  static const Color backgroundColor = Colors.white;
  static const Color fieldBackgroundColor = Color(0xFFF4F5F7);
  static const Color textDark = Color.fromARGB(255, 12, 14, 26);
  static const Color textGrey = Color.fromARGB(255, 109, 112, 124);

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headlineMedium: GoogleFonts.nunito(
          fontSize: 32, 
          fontWeight: FontWeight.bold, 
          color: primaryColor,
        ),
        bodyLarge: GoogleFonts.roboto(
          fontSize: 14, 
          color: textDark, 
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}