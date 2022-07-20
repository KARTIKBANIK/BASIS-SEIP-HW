import 'package:day_16/Screens/fourth.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  Third({Key? key, this.count}) : super(key: key);

  int? count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Fourth(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Go Page 4",
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
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Value is : ${count}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
