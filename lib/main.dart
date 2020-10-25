import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/home_page.dart';
import 'package:flutter_delivery_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliveryApp',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
