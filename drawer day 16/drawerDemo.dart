import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => SafeArea(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(3.0),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=300"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bongani Nkosi",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Text(
                "nkbonganinkosi96@gmail.com",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              child: Center(
                child: Text(
                  "SIGN OUT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),

                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),

                //color: Colors.black,
              ),
              height: 40,
              width: 240,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      ),
    );
Widget buildMenuItems(BuildContext context) => Container(
      color: Colors.black,
      child: Column(
        children: [
          ListTile(
            // tileColor: Colors.transparent,
            leading: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            title: Text(
              "Add Loads",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: Colors.white,
            ),
            title: Text(
              "Point Redemption",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.plus_one,
              color: Colors.white,
            ),
            title: Text(
              "Points",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            title: Text(
              "Dashboard",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.white,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 18),
            child: Text(
              "Communicate",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            title: Text(
              "Privacy Policy",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.call,
              color: Colors.white,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              "About App",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
