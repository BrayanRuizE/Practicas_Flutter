import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String imagen =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5-8Chu2Jala7WIXFNYCt4PY78NzZng1MVcw&s';
  final List lista = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 09 - Pokédex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[0]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[1]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[2]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[3]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[4]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[5]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[6]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[7]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[8]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[9]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[10]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[11]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[12]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[13]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[14]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[15]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[16]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[17]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[18]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 0.0,
            ),
            title: Text('${lista[19]}'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: NetworkImage(imagen),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
