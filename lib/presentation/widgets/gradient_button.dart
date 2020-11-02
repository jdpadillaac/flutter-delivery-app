import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double height;
  final double width;
  const GradientButton(
      {Key key,
      @required this.onTap,
      @required this.text,
      @required this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.center,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: appGradientColors,
        ),
      ),
      child: InkWell(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onTap: onTap),
    );
  }
}
