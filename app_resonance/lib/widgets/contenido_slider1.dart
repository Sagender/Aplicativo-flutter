import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/destino1_model.dart';
import '../models/response_model.dart';
import '../services/places_services.dart';

class ContenidoDestinoSlider1 extends StatefulWidget {
  @override
  ContenidoDestinoSlider1State createState() => ContenidoDestinoSlider1State();
}

class ContenidoDestinoSlider1State extends State<ContenidoDestinoSlider1> {
  final ScrollController scrollController = ScrollController();

  @override
  @override
  Widget build(BuildContext context) {
    final placeService = Provider.of<PlaceService>(context);
    return Container(
        width: double.infinity,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal, //Dirección del Scroll
                itemCount: placeService.info.length,
                itemBuilder: (_, int index) => CitySlider(
                  info: placeService.info[index],
                ),
              ),
            ),
          ],
        ));
  }
}

class CitySlider extends StatelessWidget {
  final Info info;

  const CitySlider({Key? key, required this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 150,
        height: 100,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: FadeInImage(
                  placeholder: AssetImage("assets/images/no-image.jpg"),
                  image: NetworkImage(info.background),
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover),
            ),
          ],
        ));
  }
}
