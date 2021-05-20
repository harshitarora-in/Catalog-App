import 'package:first_project/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Harshit";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          child: Text("$name Say Hello to the world of Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
