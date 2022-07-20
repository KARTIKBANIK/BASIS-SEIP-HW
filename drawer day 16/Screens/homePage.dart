import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Text(
                    "BUTTON 1",
                    style: TextStyle(
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
            InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Text(
                    "BUTTON 1",
                    style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
