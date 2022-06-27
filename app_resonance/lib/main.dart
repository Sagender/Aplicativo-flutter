import 'package:flutter/material.dart';

import 'details/detail_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';
import 'services.dart/products_service.dart';
import 'splash/splashScreen.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ProductsService())],
        child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Para dar color a la barra de hora y bateria
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      initialRoute: "Splash",
      routes: {
        "Splash": (_) => const SplashScreen(),
        "Home": (_) => const HomeScreen(),
        "Galeria": (_) => const GaleriaScreen(),
        "Details": (_) => const DetailsScreen(),
      },
    );
  }
}
