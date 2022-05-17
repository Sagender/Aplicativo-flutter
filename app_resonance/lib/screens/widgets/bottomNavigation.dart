// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

import '../destinos.dart';
import '../galeria.dart';
import '../home.dart';
import '../recomendados.dart';

class MainPage extends StatefulWidget {
  // para implementar la navegación debe ser statefull
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    Destinos(),
    Galeria(),
    Recomendados(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          // Permiten fijar un color para el item seleccionado o viceversa
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          //Llamado a los items
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.apps),
            ),
            BottomNavigationBarItem(label: "Destino", icon: Icon(Icons.route)),
            BottomNavigationBarItem(
              label: "Galería",
              icon: Icon(Icons.camera_rear),
            ),
            BottomNavigationBarItem(
              label: "Recomendados",
              icon: Icon(Icons.read_more),
            ),
          ]), //Llamar al método
    );
  }
}
