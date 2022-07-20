import 'package:day_16/drawerDemo.dart';
import 'package:flutter/material.dart';

class Fifth extends StatefulWidget {
  const Fifth({Key? key}) : super(key: key);

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  bool x = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("5th Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  x = !x;
                });
              },
              child: Container(
                child: Center(
                  child: Text(
                    "This is Page 5",
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
            Visibility(
              visible: x == true,
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                    child: Text(
                      "V I S I B I L I T Y",
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
          ],
        ),
      ),
    );
  }
}
