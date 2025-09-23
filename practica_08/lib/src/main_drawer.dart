import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/imagen.png'),
                  backgroundColor: Colors.deepPurple,
                ),
                SizedBox(height: 5.0),
                Text('Brayan Ruiz', style: TextStyle(fontSize: 22.0)),
                SizedBox(height: 5.0),
                Text('Estudiante', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.person, color: Colors.black),
          title: Text('Perfil'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.inbox, color: Colors.black),
          title: Text('Mensajería'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.assessment, color: Colors.black),
          title: Text('Dasboard'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.settings, color: Colors.black),
          title: Text('Configuración'),
        ),
      ],
    );
  }
}
