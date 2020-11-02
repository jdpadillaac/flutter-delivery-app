import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/domain/model/product.dart';
import 'package:flutter_delivery_app/presentation/widgets/gradient_button.dart';

class ItemProduct extends StatelessWidget {
  final Product product;
  const ItemProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Theme.of(context).canvasColor,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(product.image),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    product.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    product.description,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.overline,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$ ${product.price}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GradientButton(
              onTap: () {},
              text: 'Agregar',
              height: 30,
              width: 140,
            ),
          ],
        ),
      ),
    );
  }
}
