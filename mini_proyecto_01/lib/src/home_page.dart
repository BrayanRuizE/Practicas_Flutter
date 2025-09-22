import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/mostrar_imc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ctrlpeso = TextEditingController();
  final ctrolalt = TextEditingController();
  final data = Data(peso: 0, altura: 0, imc: 0);
  String peso = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlpeso,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese su peso en Kilogramos:',
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            TextField(
              controller: ctrolalt,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese su altura en metros:',
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.black,
              ),
              child: Text('Enviar'),
              onPressed: () {
                if (ctrlpeso.text.isNotEmpty && ctrolalt.text.isNotEmpty) {
                  data.peso = double.parse(ctrlpeso.text);
                  data.altura = double.parse(ctrolalt.text);
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DatosIMC(datos: data),
                      ),
                    );
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor, ingrese peso y altura.'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  double peso;
  double altura;
  double imc;

  Data({required this.peso, required this.altura, required this.imc});
}
