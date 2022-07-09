import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/response_model.dart';
import '../services/places_services.dart';

class ContenidoDestinoSlider extends StatefulWidget {
  @override
  ContenidoDestinoSliderState createState() => ContenidoDestinoSliderState();
}

class ContenidoDestinoSliderState extends State<ContenidoDestinoSlider> {
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
                itemCount: placeService.response.length,
                itemBuilder: (_, int index) => CitySlider(
                  response: placeService.response[index],
                ),
              ),
            ),
          ],
        ));
  }
}

class CitySlider extends StatelessWidget {
  final Response response;

  const CitySlider({Key? key, required this.response}) : super(key: key);
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
                  image: NetworkImage(response.background),
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover),
            ),
          ],
        ));
  }
}
