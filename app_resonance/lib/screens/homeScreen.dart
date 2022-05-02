// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
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
                    "Bienvenido a Ripuy",
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
