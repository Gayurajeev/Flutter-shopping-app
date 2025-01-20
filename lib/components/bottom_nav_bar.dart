import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        onTabChange: (value)=> onTabChange!(value),
          tabs:const [
            GButton(
                icon:Icons.home,
              text: 'Shop',
            ),
              GButton(
          icon:Icons.shopping_bag_rounded,
          text: 'Cart',

        )
          ],
      ),
    );
  }
}

