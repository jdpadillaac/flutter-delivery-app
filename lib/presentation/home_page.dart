import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/splash/splash_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SplashScreen(),
    );
  }
}
