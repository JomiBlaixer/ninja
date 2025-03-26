import 'package:flutter/material.dart';
import 'package:ninja1/mytheme.dart';
// import 'package:ninja1/pages/create_page.dart';
import 'package:ninja1/pages/home_page.dart';

void main() => runApp(const Ninja1());

class Ninja1 extends StatelessWidget {
  const Ninja1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ninja App 1',
      theme: myTheme,
      home: HomePage(),
      // home: CreatePage(),
      //luis
    );
  }
}
