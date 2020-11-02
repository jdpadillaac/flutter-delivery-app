import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/data/mock/product_list.dart';
import 'package:flutter_delivery_app/domain/model/product.dart';
import 'package:flutter_delivery_app/presentation/home/products/product_item.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final Product product = products[index];
            return ItemProduct(product: product);
          },
        ),
      ),
    );
  }
}
