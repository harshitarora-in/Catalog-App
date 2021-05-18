import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Harshit";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: Container(
          child: Text("$name Say Hello to the world of Flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
