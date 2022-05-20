// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            child: Stack(
              Image.asset("assets/img/Lima12.jpg",
              height: 400,
              fit: Boxfit.cover,)
            )
          ),
        ],
      ),
    );
  }
}
