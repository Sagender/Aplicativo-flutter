// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:appcarrusel/screens/gallery_screen2.dart';
import 'package:flutter/material.dart';

import 'screens.dart';

class MainPage extends StatefulWidget {
  // para implementar la navegación debe ser statefull
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

//Nagecación entre vistas
class _MainPageState extends State<MainPage> {
  List pages = [
    HomeScreen(), // Listado de 0-3
    DestinoScreen(),
    GalleryScreen(),
    RecomendadosPage(),
    BookingsScreen()
  ];
  int currentIndex = 0; // La Primera vista es Home
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
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 0,
          //Llamado a los items
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Destino",
              icon: Icon(Icons.card_travel),
            ),
            BottomNavigationBarItem(
              label: "Galería",
              icon: Icon(Icons.photo_album_outlined),
            ),
            BottomNavigationBarItem(
              label: "Opinión",
              icon: Icon(Icons.comment_bank_outlined),
            ),
          ]), //Llamar al método
    );
  }
}
