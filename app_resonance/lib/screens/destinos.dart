// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';

class DestinosPage extends StatelessWidget {
  const DestinosPage({Key? key}) : super(key: key);
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
                " Destinos",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.00),
              ),
              background: Container(
                child: Image.asset(
                  "assets/images/Lima10.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //SliverList(delegate: SliverChildListDelegate(Column(children: [],)),)Sirveparaagregar

          SliverFillRemaining(
            child: Center(child: Text("Ripuy")),
          ),
        ],
      ),
    );
  }
}
