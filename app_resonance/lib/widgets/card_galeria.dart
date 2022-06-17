// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardGal extends StatelessWidget {
  final String urlImagen;
  final String nombre;

  const CardGal({
    Key? key,
    required this.urlImagen,
    required this.nombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 100,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.white,
        child: Column(
          children: [
            Image(
              image: NetworkImage(urlImagen),
              // height: 250,
              // width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              child: Text(nombre),
              padding: EdgeInsets.all(20),
            )
          ],
        ));
  }
}
