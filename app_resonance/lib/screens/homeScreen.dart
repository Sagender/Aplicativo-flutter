// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, duplicate_ignore, camel_case_types, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../widget/category_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        color: Color.fromARGB(255, 248, 240, 240),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    "assets/icons/Inicio.png",
                    height: 15,
                    width: 15,
                  ),
                  Text("Home", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    "assets/icons/destino.png",
                    height: 15,
                    width: 15,
                  ),
                  Text("Destino", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    "assets/icons/galeria.png",
                    height: 15,
                    width: 15,
                  ),
                  Text("Galeria", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    "assets/icons/recomendado.png",
                    height: 15,
                    width: 15,
                  ),
                  Text("Recomendados", style: TextStyle(color: Colors.black)),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .40, //.45,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: Colors.amberAccent, //Color(0xFFF5CEB8),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent, //Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Text(
                    "Ripuy: Bienvenido user ",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                        decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                    )),
                  ),
                  Expanded(
                    child: GridView.count(
                      //He modificado esto parámetros
                      crossAxisCount: 1,
                      childAspectRatio: .85,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      children: <Widget>[
                        cardContainer(
                          title: "Centro de Lima",
                          image: "assets/image/CentroLima.jpg",
                          press: () {},
                        ),
                        cardContainer(
                            title: "Chorrillos",
                            image: "assets/image/Lima1.jpg",
                            press: () {}),
                        cardContainer(
                          title: "Como te dejaron",
                          image: "assets/image/pilates.png",
                          press: () {},
                        ),
                        cardContainer(
                          title: "Ella no te ama",
                          image: "assets/image/pilates.png",
                          press: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
