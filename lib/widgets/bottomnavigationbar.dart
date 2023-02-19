import 'package:flutter/material.dart';
import "package:google_nav_bar/google_nav_bar.dart";

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        GNav(
            gap: 5,
            padding: EdgeInsets.all(25),
            backgroundColor: Colors.purple,
            tabBackgroundColor: Colors.white,
            tabBorderRadius: 20,
            tabMargin: EdgeInsets.all(8),
            tabs: [
              GButton(
                onPressed: () {},
                icon: Icons.account_balance,
                iconActiveColor: Colors.deepPurpleAccent[700],
                iconColor: Colors.white,
                iconSize: 25,
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(30),
                text: 'Bank',
                textColor: Colors.deepPurple,
              ),
              GButton(
                onPressed: () {},
                icon: Icons.account_circle,
                iconActiveColor: Colors.deepPurple,
                iconColor: Colors.white,
                iconSize: 25,
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(30),
                text: 'Profile',
                textColor: Colors.deepPurple,
              ),
              GButton(
                onPressed: () {},
                icon: Icons.access_alarm,
                iconActiveColor: Colors.deepPurple,
                iconColor: Colors.white,
                iconSize: 25,
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(30),
                text: 'Reminder',
                textColor: Colors.deepPurple,
              ),
              GButton(
                onPressed: () {},
                icon: Icons.add_shopping_cart_sharp,
                iconActiveColor: Colors.deepPurple,
                iconColor: Colors.white,
                iconSize: 25,
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(30),
                text: 'Expense',
                textColor: Colors.deepPurple,
              ),
              GButton(
                onPressed: () {},
                icon: Icons.stacked_bar_chart_outlined,
                iconActiveColor: Colors.deepPurple,
                iconColor: Colors.white,
                iconSize: 25,
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(30),
                text: 'Budget',
                textColor: Colors.deepPurple,
              ),
            ]),
      ],
    );
  }
}
