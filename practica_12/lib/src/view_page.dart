import 'package:flutter/material.dart';
import 'dart:convert';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 12 - Leer JSON'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(
            context,
          ).loadString('assets/pokedex.json'),
          initialData: [],
          builder: (context, snapshot) {
            var showData = jsonDecode(snapshot.data.toString());

            return ListView.builder(
              itemCount: showData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(showData[index]['name']['english']),
                  subtitle: Text(showData[index]['type'].toString()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
