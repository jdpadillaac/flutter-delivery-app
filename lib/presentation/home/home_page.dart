import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/cart/cart_page.dart';
import 'package:flutter_delivery_app/presentation/home/navigation_bar.dart';
import 'package:flutter_delivery_app/presentation/home/products/products_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  static String routeName = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: index,
              children: [
                ProductsPage(),
                CartPage(
                  onShoping: () {
                    setState(() {
                      index = 0;
                    });
                  },
                ),
                Text('current index $index'),
                Text('current index $index'),
                Text('current index $index'),
              ],
            ),
          ),
          NavigationBar(
              homeIndex: index,
              onIndexSelected: (i) {
                print(i);
                setState(() {
                  index = i;
                });
              }),
        ],
      ),
    );
  }
}
