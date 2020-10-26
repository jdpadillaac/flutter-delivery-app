import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';

class LoginHeader extends StatelessWidget {
  final double logoSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Stack(
          children: [
            Positioned.fill(
              bottom: logoSize,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: appGradientColors,
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                // color: Colors.red,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Positioned(
                bottom: 0,
                child: CircleAvatar(
                  radius: logoSize,
                  backgroundColor: AppColors.blueDarkLight,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset('assets/images/repartidor.png'),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
