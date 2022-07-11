import 'package:day_11/screens/add_page.dart';
import 'package:day_11/screens/favourite.dart';
import 'package:day_11/screens/product_page.dart';
import 'package:day_11/screens/profile.dart';
import 'package:day_11/screens/vert_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<Widget> pages = [
    AddPage(),
    ProductPage(),
    FavouritePage(),
    ProfilePage(),
    VertPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.home_filled, size: 30),
          Icon(Icons.favorite_outlined, size: 30),
          Icon(Icons.perm_identity, size: 30),
          Icon(Icons.more_vert_outlined, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
