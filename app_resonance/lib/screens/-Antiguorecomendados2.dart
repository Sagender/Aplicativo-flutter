// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RecomendadosPages extends StatelessWidget {
  const RecomendadosPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: Alignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://www.peru.travel/Contenido/Atractivo/Imagen/es/14/1.1/Principal/Centro%20historico%20de%20Lima.jpg'),
        ),
        Positioned(
          bottom: -40.0,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromARGB(255, 204, 139, 54),
            backgroundImage: AssetImage('assets/images/jony.jpg'),
          ),
        )
      ],
    );
    return Column(
      children: <Widget>[
        stack,
        SizedBox(height: 70),
        ListTile(
          title: Center(child: Text('DESTINO 1')),
          subtitle: Center(child: Text('Plaza de Armas')),
        ),
        ListTile(
          title: Center(child: Text('DESTINO 2')),
          subtitle: Center(child: Text('Barranco')),
        ),
        ListTile(
          title: Center(child: Text('DESTINO 3')),
          subtitle: Center(child: Text('Plaza San Martin')),
        )
      ],
    );
  }
}
