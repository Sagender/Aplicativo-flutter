// ignore_for_file: prefer_const_constructors

import 'package:appcarrusel/screens/widgets/card_galeria.dart';
import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lugares a visitar en Lima'),
          backgroundColor: Colors.grey,
        ),
        body: ListView(children: [
          GestureDetector(
            child: CardGal(
                urlImagen:
                    'https://media.istockphoto.com/photos/landscapes-of-lima-peru-picture-id1370185005?k=20&m=1370185005&s=612x612&w=0&h=gRqLG0n-COLi0hGPZiiU9W0AgN2_1gYubzTfEU9RlzQ=',
                nombre: 'Chorrillos'),
          ),
          GestureDetector(
            child: CardGal(
                urlImagen:
                    'https://media.istockphoto.com/photos/aerial-view-of-lighthouse-of-miraflores-in-lima-peru-picture-id1091870010?k=20&m=1091870010&s=612x612&w=0&h=tTOdp8tvmgha5D3szpvjCTGaPjrgZlADWVZHAkalyLs=',
                nombre: 'Mirador-Miraflores'),
          ),
          GestureDetector(
            child: CardGal(
                urlImagen:
                    'https://media.istockphoto.com/photos/lima-landscapes-picture-id1152715587?k=20&m=1152715587&s=612x612&w=0&h=ggz4rm9YYMG-Uvn-o0zmEhl121ucQs8hWlx054Ocqwk=',
                nombre: 'Plaza de lima'),
          ),
          GestureDetector(
            child: CardGal(
                urlImagen:
                    'https://media.istockphoto.com/photos/san-martin-square-in-lima-peru-picture-id1075517408?k=20&m=1075517408&s=612x612&w=0&h=ixC4B4HTwb4vldcNe8lV5IwYBSPpA3JwoemulWVKGlQ=',
                nombre: 'Lima'),
          ),
          GestureDetector(
            child: CardGal(
                urlImagen:
                    'https://media.istockphoto.com/photos/aerial-view-of-la-punta-callao-peru-panoramic-view-picture-id1284133265?k=20&m=1284133265&s=612x612&w=0&h=DbZFs0zEvfrjtNDbLkpG-_sahMebi0ThfX9VfSM1RG0=',
                nombre: 'La Punta - Callao'),
          ),
          GestureDetector(
            child: CardGal(
                urlImagen:
                    'https://media.istockphoto.com/photos/basilica-cathedral-lima-picture-id515789452?k=20&m=515789452&s=612x612&w=0&h=xUzTamciRSvPE8bcwsdBz-YIJVmZAI6SCb2uxeElz9I=',
                nombre: 'Catedral de Lima'),
          ),
          SizedBox(
            height: 20,
          ),
        ]));
  }

  void mostrarAlertar(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Hola!!!'),
            content: Text('contenido!!!'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Icon(Icons.cancel))
            ],
          );
        });
  }
}
