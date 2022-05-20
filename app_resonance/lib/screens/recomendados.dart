// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class RecomendadosPage extends StatelessWidget {
  const RecomendadosPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white60,
            pinned: true,
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              //Title destinos
              title: Text(
                " Recomendados",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.00),
              ),
              background: Container(
                child: Image.asset(
                  "assets/img/Lima11.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(child: Text("Ripuy")),
          ),
        ],
      ),
    );
  }
}
