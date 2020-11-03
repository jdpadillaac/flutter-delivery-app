import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/home_page.dart';
import 'package:flutter_delivery_app/routes.dart';
import 'package:flutter_delivery_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliveryApp',
      theme: AppTheme().light(),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: appRoutes,
    );
  }
}
