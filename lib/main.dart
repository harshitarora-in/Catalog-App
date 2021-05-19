import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      initialRoute: "/Login",
      routes: {
        "/": (context) => HomePage(),
        "/Login": (context) => LoginPage()
      },
    );
  }
}
