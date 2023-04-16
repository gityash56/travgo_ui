//flutter
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
      backgroundColor: Colors.white,
      cardTheme: CardTheme(
        margin: EdgeInsets.all(10),
        color: Colors.blue[200],
        elevation: 0.5,
      ),
      
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
      ));
  static final dark = ThemeData.dark().copyWith(
      backgroundColor: Colors.black,
      cardTheme: CardTheme(
        margin: EdgeInsets.all(10),
        color: Colors.blue[200],
        elevation: 0.5,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.red,
      ));
      
}
