// ignore_for_file: file_names, prefer_const_constructors, override_on_non_overriding_member, unused_import

import 'dart:async';

import "package:flutter/material.dart";

import '../widgets/bottomNavigation.dart';

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
            context, MaterialPageRoute(builder: (context) => MainPage())));
    /*void initSate() {
    var d = Duration(seconds: 1);
    Future.delayed(
      d,
      () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ), (route) => false);
      },
    );

    super.initState();*/
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
              Color.fromARGB(255, 112, 238, 105),
              Color.fromARGB(255, 39, 184, 31),
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
                  "assets/img/ripuyLogo.png",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
