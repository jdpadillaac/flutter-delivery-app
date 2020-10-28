import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: AppColors.blueDark,
    displayColor: AppColors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: _border,
    enabledBorder: _border,
    focusedBorder: _border,
    hintStyle: GoogleFonts.poppins(
      color: AppColors.lightgrey,
    ),
  ),
  iconTheme: IconThemeData(color: AppColors.blueDark, size: 2),
);

final OutlineInputBorder _border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: AppColors.verylightgrey,
    width: 3,
    style: BorderStyle.solid,
  ),
);

// Dark theme

final darkTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: AppColors.blueDark,
    displayColor: AppColors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: _border,
    enabledBorder: _border,
    focusedBorder: _border,
    hintStyle: GoogleFonts.poppins(
      color: AppColors.lightgrey,
    ),
  ),
  iconTheme: IconThemeData(color: AppColors.blueDark, size: 2),
);
