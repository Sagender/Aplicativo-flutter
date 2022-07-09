import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/galeria_model.dart';
import '../services/places_services.dart';

class GalleriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeService = Provider.of<PlaceService>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            TitleGaleria(),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: placeService.galeria.length,
                itemBuilder: (_, int index) => GaleriaCard(
                  galeria: placeService.galeria[index],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class GaleriaCard extends StatelessWidget {
  final Galeria galeria;
  const GaleriaCard({
    Key? key,
    required this.galeria,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, "DetailGalery", arguments: galeria),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: FadeInImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            galeria.picture,
          ),
          placeholder: AssetImage("assets/images/no-image.jpg"),
          height: 250,
          width: double.maxFinite,
        ),
      ),
    );
  }
}

class TitleGaleria extends StatelessWidget {
  const TitleGaleria({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Nuestras fotos',
        style: GoogleFonts.roboto(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
