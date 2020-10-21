import 'package:flutter/material.dart';
import 'package:gloomhaven_reference_guide/screens/main_screen.dart';

import './routes.dart';

void main() => runApp(GloomhavenApp());

class GloomhavenApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GloomhavenAppState();
  }
}

class _GloomhavenAppState extends State<GloomhavenApp> {
  ThemeData _getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(222, 210, 204, 1),
      primaryColor: Color.fromRGBO(135, 163, 123, 1),
      fontFamily: 'HighTower',
      textTheme: TextTheme(
          body1: TextStyle(
        fontSize: 18,
        fontFamily: 'HighTower',
      )),
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          title: TextStyle(
              color: Color.fromRGBO(53, 52, 48, 1),
              fontFamily: 'PirataOne',
              fontSize: 25.0),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Color.fromRGBO(135, 163, 123, 1),
      ),
      accentColor: Color.fromRGBO(135, 163, 123, 1),
      accentColorBrightness: Brightness.light,
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _getTheme(),
      routes: Routes().getRoutes,
      home: MainScreen(),
    );
  }
}
