import 'package:flutter/material.dart';
import 'package:me_doc/navbar.dart';
import 'package:me_doc/pages/home.dart';

void main() {
  runApp(const MyApp());      
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}