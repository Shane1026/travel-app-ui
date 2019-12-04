import 'package:flutter/material.dart';
import 'NavigationPage.dart';

void main() => runApp(Travel());

class Travel extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.pink[50],
          accentColor: Colors.pink),
      home: NavPage(),
    );
  }
}
