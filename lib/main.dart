import 'package:flutter/material.dart';
import 'package:toku/screens/Phrases_page.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_member_screen.dart';
import 'package:toku/screens/home.dart';
import 'package:toku/screens/numbers_page.dart';


void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NumbersPage(),
    );
  }
}
