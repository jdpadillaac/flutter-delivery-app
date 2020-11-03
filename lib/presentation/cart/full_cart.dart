import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';
import 'package:flutter_delivery_app/data/mock/product_list.dart';
import 'package:flutter_delivery_app/domain/model/product.dart';

class FullCart extends StatelessWidget {
  const FullCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemExtent: 210,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return _CartProduct(product: product);
              },
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

class _CartProduct extends StatelessWidget {
  final Product product;
  const _CartProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Stack(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                        SizedBox(height: 20),
                        _endCard(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: AppColors.blueDarkLight,
                maxRadius: 18,
                child: Icon(
                  Icons.delete_outline,
                  size: 20,
                ),
              ),
              onTap: () {
                print('HolA');
              },
            ),
          ),
        ],
      ),
    );
  }

  Row _endCard(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Icon(
              Icons.add,
              size: 25,
              color: AppColors.blueDarkLight,
            ),
          ),
        ),
        Text('5'),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blueDarkLight,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Icon(
              Icons.remove,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 15),
        Text(
          '\$ ${product.price}',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
