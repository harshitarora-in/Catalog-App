import 'package:first_project/models/catalog.dart';
import 'package:first_project/widgets/drawer.dart';
import 'package:first_project/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Harshit";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(8, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummyList[index]);
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
