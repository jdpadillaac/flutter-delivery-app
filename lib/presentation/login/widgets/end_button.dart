import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: appGradientColors,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Ingresar',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
