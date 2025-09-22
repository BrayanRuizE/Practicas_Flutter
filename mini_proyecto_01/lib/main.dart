import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Proyecto 01',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
