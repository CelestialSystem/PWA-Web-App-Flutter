import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static final TextStyle heading = GoogleFonts.raleway(
      fontSize: 40, fontWeight: FontWeight.w900, letterSpacing: 1.1);
  static final TextStyle headingL = GoogleFonts.raleway(
    fontSize: 40,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.1,
  );
  static final TextStyle headingMobile = GoogleFonts.raleway(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.1,
  );
  static final TextStyle h1 = GoogleFonts.raleway(
      fontSize: 96, fontWeight: FontWeight.w400, letterSpacing: -1.5);

  static final TextStyle h2 = GoogleFonts.raleway(
    fontSize: 60,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.5,
  );
  static final TextStyle h3 = GoogleFonts.raleway(
    fontSize: 48,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  static final TextStyle h4 = GoogleFonts.raleway(
    fontSize: 34,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.25,
  );
  static final TextStyle h5 = GoogleFonts.raleway(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  static final TextStyle h6 = GoogleFonts.raleway(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );
  static final TextStyle subtitle1 = GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );
  static final TextStyle subtitle2 = GoogleFonts.raleway(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );

  static final TextStyle body1 = GoogleFonts.raleway(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );
  static final TextStyle body2 = GoogleFonts.raleway(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.25,
  );

  static final TextStyle button = GoogleFonts.raleway(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.25,
  );

  static final TextStyle caption = GoogleFonts.raleway(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
  );

  static final TextStyle overline = GoogleFonts.raleway(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
  );

  static final Color backgroundColor = Color(0xFFE0E5EC);

  static final Color shadowColor = Color(0xFFA3B1C6);

  static final Color lightColor = Color(0xFFFFFFFF);
}
