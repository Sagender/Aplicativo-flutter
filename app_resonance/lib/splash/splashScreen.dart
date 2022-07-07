// ignore_for_file: file_names, prefer_const_constructors, override_on_non_overriding_member, unused_import

import 'dart:async';

import 'package:appcarrusel/screens/login_Screen.dart';
import "package:flutter/material.dart";

import '../screens/mainpage_avigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
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
              Colors.white,
              Colors
                  .white60, /*
              Color.fromARGB(255, 112, 238, 105),
              Color.fromARGB(255, 39, 184, 31),
            */
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/ripuyLogo.png",
                  height: 150.0,
                  width: 150.0,
                ),
                Text(
                  "Ripuy App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 25.0,
                    fontFamily: "Roboto-Thin",
                  ),
                ),
                CircularProgressIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
