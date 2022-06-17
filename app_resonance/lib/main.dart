import 'package:appcarrusel/services.dart/products_service.dart';
import 'package:flutter/material.dart';
import 'package:appcarrusel/routes/routes.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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
      initialRoute: Routes.rutaInicial,
      routes: Routes.getRutas(),
    );
  }
}
