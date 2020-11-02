import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData dark() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: AppColors.blueDarkMedium,
        textTheme: GoogleFonts.poppinsTextTheme()
            .apply(
              bodyColor: AppColors.white,
              displayColor: AppColors.white,
            )
            .copyWith(
              headline6: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      accentColor: AppColors.white,
      canvasColor: AppColors.blueDarkMedium,
      scaffoldBackgroundColor: AppColors.blueDark,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.white,
        displayColor: Colors.green[200],
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderDark(),
        enabledBorder: _borderDark(),
        focusedBorder: _borderDark(),
        fillColor: AppColors.blueDarkMedium,
        filled: true,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.lightgrey,
        ),
      ),
      iconTheme: IconThemeData(color: AppColors.white, size: 2),
    );
  }

  ThemeData light() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: AppColors.blueDarkLight,
        textTheme: GoogleFonts.poppinsTextTheme()
            .apply(
              bodyColor: AppColors.white,
              displayColor: AppColors.white,
            )
            .copyWith(
              headline6: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      accentColor: AppColors.blueDarkLight,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.blueDark,
        displayColor: AppColors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderLight(),
        enabledBorder: _borderLight(),
        focusedBorder: _borderLight(),
        hintStyle: GoogleFonts.poppins(
          color: AppColors.lightgrey,
        ),
      ),
      iconTheme: IconThemeData(color: AppColors.blueDark, size: 2),
    );
  }
}

OutlineInputBorder _borderLight() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: AppColors.verylightgrey,
      width: 3,
      style: BorderStyle.solid,
    ),
  );
}

OutlineInputBorder _borderDark() {
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
