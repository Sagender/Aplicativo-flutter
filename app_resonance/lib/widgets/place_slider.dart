import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/place_model.dart';
import '../services/places_services.dart';

class PlaceSlider extends StatefulWidget {
  @override
  PlaceSliderState createState() => PlaceSliderState();
}

class PlaceSliderState extends State<PlaceSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    //Argumento para llamar a la Api
    final placeService = Provider.of<PlaceService>(context);
    return Container(
        width: double.infinity,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Novedades",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal, //Dirección del Scroll
                itemCount: placeService.place.length,
                itemBuilder: (_, int index) => CitySlider(
                  place: placeService.place[index],
                ),
              ),
            ),
          ],
        ));
  }
}

class CitySlider extends StatelessWidget {
  final Place place;
  const CitySlider({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: 300,
        height: 400,
        child: Column(
          children: [
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, "Details", arguments: place),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(place.picture),
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              place.ubication,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      place.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      place.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
