import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      accentColor: darkBluishColor,
      primarySwatch: Colors.deepPurple,
      buttonColor: darkBluishColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));
  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      buttonColor: lightBluishColor,
      cardColor: Colors.black,
      canvasColor: darkcremColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      accentColor: Colors.white,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6.copyWith(color: Colors.white)),
      ));

  //colors
  static Color cremColor = Color(0xfff5f5f5);
  static Color darkcremColor = Vx.gray800;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.purple600;
}
