import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/constants.dart';

class NavigationBar extends StatelessWidget {
  final int homeIndex;
  final ValueChanged<int> onIndexSelected;
  NavigationBar({
    Key key,
    @required this.homeIndex,
    this.onIndexSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.blueDarkMedium,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: IconButton(
                    icon: Icon(Icons.home_outlined),
                    onPressed: () => onIndexSelected(0),
                  ),
                ),
                Material(
                  child: IconButton(
                    icon: Icon(Icons.store_outlined),
                    onPressed: () => onIndexSelected(1),
                  ),
                ),
                Material(
                  child: CircleAvatar(
                    backgroundColor: AppColors.blueDarkLight,
                    child: IconButton(
                      icon: Icon(Icons.shopping_basket_outlined),
                      onPressed: () => onIndexSelected(2),
                    ),
                  ),
                ),
                Material(
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () => onIndexSelected(3),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () => onIndexSelected(4),
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
