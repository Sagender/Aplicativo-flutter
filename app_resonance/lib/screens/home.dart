// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          // ignore: prefer_const_literals_to_create_immutables
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.pinkAccent,
              //leading: Icon(Icons.menu), //Muestra un Widget antes del título
              actions: <Widget>[Icon(Icons.notifications)],
              pinned: true,
              expandedHeight: 480.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Explorar 1",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.00),
                ),
                background: Container(
                  child: Image.asset(
                    "assets/img/grafLima.png",
                    //Código
                    /*height: 150,
                    width: 150,*/
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
      ),
    );
  }
}
