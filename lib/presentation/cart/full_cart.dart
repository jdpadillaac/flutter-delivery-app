import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/data/mock/product_list.dart';

class FullCart extends StatelessWidget {
  const FullCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {},
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
