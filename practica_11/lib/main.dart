import 'package:flutter/material.dart';
import 'package:practica_11/src/shared_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 11',
      home: SharedPage(),
    );
  }
}
