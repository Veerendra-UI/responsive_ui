import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_desing/ui/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive UI',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
