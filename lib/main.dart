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
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(18, 18, 18, 1.0), 
        accentColor: Color.fromRGBO(75, 255, 160, 1.0),
        backgroundColor: Color.fromRGBO(221, 221, 221, 1.0),

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