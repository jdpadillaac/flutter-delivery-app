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
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColors.blueDarkMedium,
              width: 1,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  child: IconButton(
                    color: homeIndex == 0 ? Colors.greenAccent : null,
                    icon: Icon(Icons.home_outlined),
                    onPressed: () => onIndexSelected(0),
                  ),
                ),
                Material(
                  child: IconButton(
                    color: homeIndex == 1 ? Colors.greenAccent : null,
                    icon: Icon(Icons.store_outlined),
                    onPressed: () => onIndexSelected(1),
                  ),
                ),
                Material(
                  child: CircleAvatar(
                    backgroundColor: AppColors.blueDarkLight,
                    child: IconButton(
                      color: homeIndex == 2 ? Colors.white : null,
                      icon: Icon(Icons.shopping_basket_outlined),
                      onPressed: () => onIndexSelected(2),
                    ),
                  ),
                ),
                Material(
                  child: IconButton(
                    color: homeIndex == 3 ? Colors.greenAccent : null,
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
