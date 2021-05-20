import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurple[400]),
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Harshit Arora",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "harshitarora@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("./assets/images/harshit_illus.png")),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.mail, color: Colors.white),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
