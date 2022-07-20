import 'package:day_16/Screens/first.dart';
import 'package:day_16/Screens/homePage.dart';
import 'package:day_16/drawerDemo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 80, 80, 80),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 80, 80, 80),
        ),
        drawer: DrawerDemo(),
        body: First(),
      ),
    );
  }
}
