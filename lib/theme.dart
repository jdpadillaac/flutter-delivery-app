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
  appBarTheme: AppBarTheme(
    color: AppColors.blueDarkMedium,
  ),
  accentColor: AppColors.blueDark,
  canvasColor: AppColors.blueDarkMedium,
  scaffoldBackgroundColor: AppColors.blueDark,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: AppColors.white,
    displayColor: AppColors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: _darkThemeBorder(),
    enabledBorder: _darkThemeBorder(),
    focusedBorder: _darkThemeBorder(),
    fillColor: AppColors.blueDarkMedium,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: AppColors.lightgrey,
    ),
  ),
  iconTheme: IconThemeData(color: AppColors.white, size: 2),
);

OutlineInputBorder _darkThemeBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      // color: AppColors.verylightgrey,
      color: AppColors.verylightgrey,
      width: 3,
      style: BorderStyle.solid,
    ),
  );
}
