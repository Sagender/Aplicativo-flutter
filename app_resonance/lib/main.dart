// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';

import 'screens/splash/splashScreen.dart';
import 'screens/widgets/bottomNavigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "Splash", //Ruta de inicio
        routes: {
          // rutas a
          "Splash": (_) => SplashScreen(),
          //"Home": (_) => MainPage(),
        });
  }
}
