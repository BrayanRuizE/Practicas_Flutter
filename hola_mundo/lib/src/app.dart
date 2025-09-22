import 'package:flutter/material.dart';
import 'package:hola_mundo/src/pages/increment_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(child: IncrementPage()));
  }
}
