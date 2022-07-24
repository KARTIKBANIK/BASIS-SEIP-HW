import 'package:day_19/UI_Day19/homePage.dart';
import 'package:day_19/liquidSS.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Grid_Demo extends StatefulWidget {
  const Grid_Demo({Key? key}) : super(key: key);

  @override
  State<Grid_Demo> createState() => _Grid_DemoState();
}

class _Grid_DemoState extends State<Grid_Demo> {
  /*final mytxt = [
    'Bike 1',
    'Bike 2',
    'Bike 3',
    'Bike 4',
    'Bike 5',
    'Bike 6',
    'Bike 7',
    'Bike 8',
    'Bike 9',
    'Bike 10',
  ];*/

  final img = [
    'images/b1.jpg',
    'images/b2.jpg',
    'images/b3.jpg',
    'images/b4.jpg',
    'images/b5.jpg',
    'images/b6.jpg',
    'images/b7.jpg',
    'images/b8.jpg',
    'images/b9.jpg',
    'images/b10.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Icon(
                Icons.arrow_right_alt_sharp,
                color: Colors.black,
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Grid View",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        children: List.generate(
          img.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
              ),
              child: Container(
                child: Center(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            color: Colors.brown,
                            height: 250,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    color: Colors.grey,
                                    child: ListTile(
                                      title: Text(
                                        "Bike $index",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.delete,
                                        color: Colors.black,
                                      ),
                                      leading: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    color: Colors.grey,
                                    child: ListTile(
                                      title: Text(
                                        "Bike $index",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                      ),
                                      leading: Icon(
                                        Icons.bike_scooter,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LiquidSS(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "Next",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    height: 50,
                                    width: 230,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Bike $index",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                //height: 148,
                //width: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      img[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                // color: Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}
