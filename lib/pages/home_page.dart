import 'package:first_project/core/store.dart';
import 'package:first_project/models/cart.dart';
import 'package:first_project/models/catalog.dart';
import 'package:first_project/widgets/home_widgets/catalog_header.dart';
import 'package:first_project/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import 'package:first_project/utils/routes.dart';
// import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Harshit";
  final url = "";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, _) => FloatingActionButton(
                onPressed: () => Navigator.pushNamed(context, Myroutes.cartRoute),
                backgroundColor: context.theme.buttonColor,
                child: Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ))
            .badge(
                color: Vx.red500,
                size: 18,
                count: _cart.items.length,
                textStyle: TextStyle(
                    fontSize: 10,
                    color: Vx.white,
                    fontWeight: FontWeight.w500)),
      ),
      //backgroundColor: MyTheme.cremColor,
      body: SafeArea(
        child: Container(
          //padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().pOnly(top: 16).expand()
              else
                CircularProgressIndicator().centered().expand()
            ],
          ),
        ).pOnly(top: 24, right: 16, left: 16),
      ),
    );
  }
}
