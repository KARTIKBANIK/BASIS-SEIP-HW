import 'package:day_19/grid_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Grid_Demo()),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                "NEXT",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
            ),
            height: 60,
            width: 200,
          ),
        ),
      ),
    );
  }
}
