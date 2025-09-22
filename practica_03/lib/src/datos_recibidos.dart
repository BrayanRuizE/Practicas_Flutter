import 'package:flutter/material.dart';
import 'package:practica_03/src/home_page.dart';

class DatosPage extends StatelessWidget {
  final Data datos;
  const DatosPage({super.key, required this.datos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Recibidos'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Los datos son:'),
            Text('Nombre: ${datos.nombre}'),
            Text('Sexo: ${datos.sexo}'),
          ],
        ),
      ),
    );
  }
}
