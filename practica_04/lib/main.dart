import 'package:flutter/material.dart';
import 'package:practica_04/src/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 04',
      home: SplashScreen(),
    );
  }
}
