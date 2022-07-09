import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'details/detail_destinos1.dart';
import 'details/detail_destinos.dart';
import 'details/detail_gallery.dart';
import 'details/detail_history.dart';
import 'details/detail_navBar.dart';
import 'details/detail_product.dart';
import 'details/detail_screen.dart';
import 'package:flutter/services.dart';

import 'screens/galeria_screen.dart';
import 'screens/screens.dart';

import 'services/places_services.dart';
import 'splash/splashScreen.dart';
import 'widgets/contenido_slider.dart';

void main() {
  runApp(AppState());
}

// Redibujar todos los Widgets con la información de la Apis
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => PlaceService(), lazy: false),
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      // Este código evita que la orientación sea en horizontal
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RipuyApp',
      initialRoute: "Splash",
      routes: {
        "Splash": (_) => const SplashScreen(),
        "Home": (_) => const HomeScreen(),
        "Galeria": (_) => GalleriaScreen(),
        "Details": (_) => const DetailsScreen(),
        "Reservas": (_) => const DetailReservasScreen(),
        "Alerta": (_) => const AlertScreen(),
        "Drawer": (_) => const DrawerScreen(),
        "DetailsDestinos": (_) => const DetailsDestinos(),
        "DetailsDestinos1": (_) => const DetailsDestinos1(),
        "Product": (_) => const DetailProduct(),
        "Contenido": (_) => ContenidoDestinoSlider(),
        "History": (_) => DetailHistory(),
        "DetailGalery": (_) => DetailsPage(),
      },
    );
  }
}
