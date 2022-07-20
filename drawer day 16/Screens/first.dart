import 'package:day_16/Screens/second.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Second(),
              ),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                "Go Page 2",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),

              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),

              //color: Colors.black,
            ),
            height: 100,
            width: 240,
          ),
        ),
      ),
    );
  }
}
