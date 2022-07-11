import 'package:flutter/material.dart';

class VertPage extends StatefulWidget {
  const VertPage({Key? key}) : super(key: key);

  @override
  State<VertPage> createState() => _VertPageState();
}

class _VertPageState extends State<VertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Black",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
