import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';
import 'package:flutter_delivery_app/presentation/home_page.dart';
import 'package:flutter_delivery_app/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliveryApp',
      theme: ThemeData(
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
          border: _border(),
          enabledBorder: _border(),
          focusedBorder: _border(),
          fillColor: AppColors.blueDarkMedium,
          filled: true,
          hintStyle: GoogleFonts.poppins(
            color: AppColors.lightgrey,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.white, size: 2),
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: appRoutes,
    );
  }

  OutlineInputBorder _border() {
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
}
