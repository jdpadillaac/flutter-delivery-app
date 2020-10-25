import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';
import 'package:flutter_delivery_app/presentation/login/login_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: appGradientColors,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _avatar(),
              SizedBox(height: 10),
              _headline(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _avatar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: CircleAvatar(
        radius: 70,
        backgroundColor: AppColors.blueDarkMedium,
        child: Image.asset('assets/images/repartidor.png'),
      ),
    );
  }

  Text _headline() {
    return Text(
      'DeliveryApp',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline3
          .copyWith(fontWeight: FontWeight.bold),
    );
  }
}
