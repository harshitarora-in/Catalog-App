import 'package:first_project/utils/routes.dart';
import 'package:first_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      initialRoute: "/home",
      routes: {
        "/": (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage()
      },
    );
  }
}
