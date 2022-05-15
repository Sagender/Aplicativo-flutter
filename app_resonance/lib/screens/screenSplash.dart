// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names, override_on_non_overriding_member, prefer_equal_for_default_values, annotate_overrides

import 'dart:async';

import 'package:flutter/material.dart';

import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()))); //Transición de páginas
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Color.fromARGB(255, 112, 238, 105),
              Color.fromARGB(255, 39, 184, 31),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              Image.asset(
                "assets/image/ripuyLogo.png",
                height: 300.0,
                width: 300.0,
              ),
              Text(
                "Ripuy App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              CircularProgressIndicator(),
            ]),
          ],
        ),
      ),
    );
  }
}
