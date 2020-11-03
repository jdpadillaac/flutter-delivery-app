import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/cart/full_cart.dart';

class CartPage extends StatelessWidget {
  final VoidCallback onShoping;
  const CartPage({Key key, @required this.onShoping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shiping cart'),
          centerTitle: true,
        ),
        // body: EmptyCartPage(
        //   onShoping: onShoping,
        // ),
        body: FullCart(),
      ),
    );
  }
}
