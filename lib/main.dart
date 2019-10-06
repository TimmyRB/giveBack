import 'package:flutter/material.dart';
import 'strings.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(GiveBackApp());

class GiveBackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(0, 0, 0, 1.0), 
        accentColor: Color.fromRGBO(230, 230, 230, 1.0),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),

        fontFamily: "Roboto",

        textTheme: TextTheme(
          headline: TextStyle(color: Color.fromRGBO(75, 255, 160, 100), fontSize: 35.0, fontWeight: FontWeight.normal),
          button: TextStyle(color: Color.fromRGBO(90, 90, 90, 1.0), fontSize: 16.0, fontWeight: FontWeight.normal)
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(255, 255, 255, 1.0), 
        accentColor: Color.fromRGBO(95, 97, 110, 1.0),
        backgroundColor: Color.fromRGBO(32, 35, 47, 1.0),

        fontFamily: "Roboto",

        textTheme: TextTheme(
          headline: TextStyle(color: Color.fromRGBO(75, 255, 160, 100), fontSize: 35.0, fontWeight: FontWeight.normal),
          button: TextStyle(color: Color.fromRGBO(90, 90, 90, 1.0), fontSize: 16.0, fontWeight: FontWeight.normal)
        ),
      ),
      home: Login(),
    );
  }
}