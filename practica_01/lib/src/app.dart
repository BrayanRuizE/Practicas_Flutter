import 'package:flutter/material.dart';
import 'package:practica_01/src/userData.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 01',
      home: Center(child: DatosUsuarios()),
    );
  }
}
