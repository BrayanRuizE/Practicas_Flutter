import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/home_page.dart';

class DatosIMC extends StatelessWidget {
  final Data datos;
  const DatosIMC({super.key, required this.datos});

  @override
  Widget build(BuildContext context) {
    String cat = '';
    Color color = Colors.white;
    String ima = '';

    if ((datos.peso > 0) | (datos.altura > 0)) {
      datos.imc = datos.peso / (datos.altura * datos.altura);
      if (datos.imc < 18) {
        cat = 'Peso Bajo';
        ima = 'assets/1.png';
        color = Colors.blueAccent;
      } else if ((datos.imc >= 18) & (datos.imc < 25)) {
        cat = 'Normal';
        ima = 'assets/2.png';
        color = Colors.lightGreenAccent;
      } else if ((datos.imc >= 25) & (datos.imc < 27)) {
        cat = 'Obesidad';
        ima = 'assets/3.png';
        color = Colors.orangeAccent;
      } else if ((datos.imc >= 27) & (datos.imc < 30)) {
        cat = 'Obesidad Grado 1';
        ima = 'assets/4.png';
        color = Colors.deepOrangeAccent;
      } else if ((datos.imc >= 30) & (datos.imc < 40)) {
        cat = 'Obesidad Grado 2';
        ima = 'assets/5.png';
        color = Colors.redAccent;
      } else {
        cat = 'Obesidad Grado 3';
        ima = 'assets/6.png';
        color = Colors.red;
      }
    }

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Datos de IMC'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Su peso es: ${datos.peso}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        'Su altura es: ${datos.altura}',
                      ),
                    ],
                  ),
                  Text(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    'Su IMC es: ${datos.imc.toStringAsFixed(2)}',
                  ),
                  Text(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    'Usted entra en la categoria: $cat',
                  ),
                ],
              ),
            ),

            Image.asset(ima, width: 250, height: 400),
          ],
        ),
      ),
    );
  }
}
