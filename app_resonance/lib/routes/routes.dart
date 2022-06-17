// ignore_for_file: prefer_const_constructors

import 'package:appcarrusel/models/item_menu_home.dart';
import 'package:appcarrusel/screens/BookingScreen.dart';
import 'package:appcarrusel/screens/destinos.dart';
import 'package:appcarrusel/screens/loginScreen.dart';
import 'package:appcarrusel/services.dart/collaborators.dart';

import 'package:flutter/material.dart';

import '../splash/splashScreen.dart';
import '../widgets/detalle_destino.dart';

class Routes {
  static const rutaInicial = 'Splash';
  static final menuItem = <MenuItem>[
    MenuItem(
        ruta: 'Colaboradores',
        icono: Icons.check,
        nombre: 'Reserva',
        screen: ColaboratesScreen()),
    MenuItem(
        ruta: 'Reservas',
        icono: Icons.check,
        nombre: 'Reserva',
        screen: BookingsScreen()),
    MenuItem(
        ruta: 'Login',
        icono: Icons.check,
        nombre: 'Login',
        screen: LoginPage()),
    MenuItem(
        ruta: 'Splash',
        icono: Icons.check,
        nombre: 'Splash',
        screen: SplashScreen()),
    MenuItem(
        ruta: 'gradiente',
        icono: Icons.check,
        nombre: 'Gradiente Screen',
        screen: DestinoScreen()),
  ];

  /*Uso el menuItem para crear las rutas */
  static Map<String, Widget Function(BuildContext)> getRutas() {
    Map<String, Widget Function(BuildContext)> rutas = {};
    /*Debo retornar una función que construya el Widget */
    /**solo para el home, para que no salga en el main */
    rutas.addAll({'Splash': (BuildContext context) => SplashScreen()});
    rutas.addAll(
        {'detalledestino': (BuildContext context) => DetalleDestinocreen()});

    for (final item in menuItem) {
      rutas.addAll({item.ruta: (BuildContext context) => item.screen});
    }
    return rutas;
  }
}
