import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:practica_17/data/movies.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  List<Map<String, dynamic>> pelis = [...movies];

  void onDismissed(int index, String accion) {
    setState(() {
      final snackBar = SnackBar(content: Text('Accion: $accion'));
      pelis.removeAt(index);

      switch (accion) {
        case 'Agregar':
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          break;
        case 'Eliminar':
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 17 - Dismissed'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: pelis.length,
        itemBuilder: (context, int index) {
          final item = pelis[index];
          return Slidable(
            startActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => onDismissed(index, 'Agregar'),
                  label: 'Agregar',
                  backgroundColor: Colors.green,
                  icon: Icons.library_add,
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => onDismissed(index, 'Eliminar'),
                  label: 'Eliminar',
                  backgroundColor: Colors.red,
                  icon: Icons.cancel_outlined,
                ),
              ],
            ),
            child: ListTile(
              title: Text(item['title_name']),
              subtitle: Text(item['gender']),
            ),
          );
        },
      ),
    );
  }
}
