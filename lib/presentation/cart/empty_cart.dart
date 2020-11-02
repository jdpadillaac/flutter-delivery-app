import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';

class EmptyCartPage extends StatelessWidget {
  final VoidCallback onShoping;
  const EmptyCartPage({Key key, @required this.onShoping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _icon(),
        SizedBox(height: 10),
        _text(),
        SizedBox(height: 20),
        _buttom(),
      ],
    );
  }

  Center _buttom() {
    return Center(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: AppColors.blueDarkLight,
        child: Text(
          'Ir a comprar',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: onShoping,
      ),
    );
  }

  Text _text() {
    return Text(
      'No hay productos en el carrito',
      textAlign: TextAlign.center,
    );
  }

  Icon _icon() {
    return Icon(
      Icons.sentiment_dissatisfied,
      color: AppColors.blueDarkLight,
      size: 150,
    );
  }
}
