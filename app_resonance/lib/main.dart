// ignore_for_file: prefer_const_constructors

import 'package:app_resonance/screens/screenSplash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RipuyApp",
      theme: ThemeData(
        fontFamily: "Roboto",
        primarySwatch: Colors.green,
      ),
      /*title: 'Rupay app',
      theme: ThemeData(
        fontFamily: "Roboto",
        scaffoldBackgroundColor: kBackgroundColor, //Color del Scaffold
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),*/
      home: SplashScreen(),
    );
  }
}
