import 'package:first_project/core/store.dart';
import 'package:first_project/pages/cart_page.dart';
import 'package:first_project/utils/routes.dart';
import 'package:first_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      initialRoute: Myroutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
