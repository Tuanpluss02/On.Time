import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const String titleFont = 'Montserrat';
  static const String bodyFont = 'Nunito';

  static const Color primaryColor = Color(0xFF2B125A);
  static const Color secondaryColor = Color(0xFF2E2A2C);
  static const Color tertiaryColor = Color(0xFF000000);
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      secondaryColor,
      primaryColor,
      tertiaryColor,
    ],
  );
  static TextStyle bodyFontStyle = GoogleFonts.nunito(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle titleFontStyle = GoogleFonts.montserrat(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
