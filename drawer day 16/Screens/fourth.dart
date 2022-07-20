import 'package:day_16/Screens/fifth.dart';
import 'package:flutter/material.dart';

class Fourth extends StatelessWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4th Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Fifth(),
              ),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                "Go Page 5",
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
