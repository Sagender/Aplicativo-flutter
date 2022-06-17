// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'background_destino.dart';

class DetalleGradienteScreen extends StatelessWidget {
  const DetalleGradienteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          // ignore: prefer_const_constructors
          children: [Background(), SafeArea(child: _Detalle()), _Regresar()]),
    );
  }
}

class _Detalle extends StatelessWidget {
  const _Detalle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        margin: EdgeInsets.only(left: 20, top: 5.8, right: 20.0),
        child: Column(children: const [
          Hero(
            tag: 'Ventana',
            child: CircleAvatar(
              //esto es para agrandar el radius

              maxRadius: 90,
              backgroundImage: NetworkImage(
                  'https://elcomercio.pe/resizer/U1kW-7m-EKja9pw3ZFtNpZ89InM=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/II7LIHJYTVB5VHYABREBVGSPEI.jpg'),
              //child: ClipOval(),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
              'Mi razóneu et esse ex sit cillum. Est duis excepteur et cillum fugiat voluptate tempor laboris sint proident dolore reprehenderit. Ut duis non exercitation duis sint est reprehenderit eiusmod. Deserunt veniam quis ea excepteur eiusmod incididunt officia veniam enim nisi ipsum laboris ex pariatur. Pariatur veniam ex aliquip minim. Reprehenderit consectetur in nostrud non ad aliquip. Consectetur aliqua dolor quis anim veniam deserunt laboris fugiat cupidatat minim.',
              style: TextStyle(color: Colors.black54))
        ]));
  }
}

class _Regresar extends StatelessWidget {
  const _Regresar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 15,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Colors.pink,
        ),
      ),
    );
  }
}
