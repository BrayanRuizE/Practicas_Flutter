import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final url =
      'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png';
  final List<String> _clasesPokemon = [
    "Normal",
    "Fighting",
    "Flying",
    "Poison",
    "Ground",
    "Rock",
    "Bug",
    "Ghost",
    "Steel",
    "Fire",
    "Water",
    "Grass",
    "Electric",
    "Psychic",
    "Ice",
    "Dragon",
    "Dark",
    "Fairy",
    "Unknown",
    "Shadow",
    "-------",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 10 - Pokédex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: _clasesPokemon.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            title: Text('${_clasesPokemon[index]}'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 16.0,
            ),
            trailing: Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
