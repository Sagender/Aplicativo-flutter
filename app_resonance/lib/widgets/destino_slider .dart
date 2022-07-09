import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/response_model.dart';
import '../services/places_services.dart';

class DestinoSlider extends StatefulWidget {
  @override
  DestinoSliderState createState() => DestinoSliderState();
}

class DestinoSliderState extends State<DestinoSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  @override
  Widget build(BuildContext context) {
    final placeService = Provider.of<PlaceService>(context);
    return Container(
        width: double.infinity,
        height: 370,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Lugares que visitar",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
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
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: 290,
        height: 340,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "DetailsDestinos",
                  arguments: response),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(response.background),
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover),
              ),
            ),
            //const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      children: [
                        Text(
                          response.title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("8"),
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          ],
        ));
  }
}
