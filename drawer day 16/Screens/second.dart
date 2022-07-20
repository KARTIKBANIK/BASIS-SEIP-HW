import 'package:day_16/Screens/third.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Page"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    count++;
                  });

                  /* Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Third(),
                    ),
                  );*/
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "C O U N T E R",
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
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "$count",
            style: TextStyle(fontSize: 80),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Third(count: count),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  "Go Page 3",
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
        ],
      ),
    );
  }
}

int count = 0;
