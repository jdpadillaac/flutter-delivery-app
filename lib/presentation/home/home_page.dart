import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/presentation/home/navigation_bar.dart';

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
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: index,
              children: [
                Text('current index $index'),
                Text('current inde  $index'),
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
