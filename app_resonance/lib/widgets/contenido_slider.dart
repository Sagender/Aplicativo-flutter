import 'package:flutter/material.dart';

class ContenidoDestinoSlider extends StatefulWidget {
  @override
  ContenidoDestinoSliderState createState() => ContenidoDestinoSliderState();
}

class ContenidoDestinoSliderState extends State<ContenidoDestinoSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  @override
  Widget build(BuildContext context) {
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
                itemCount: 5,
                itemBuilder: (_, int index) => CitySlider(),
              ),
            ),
          ],
        ));
  }
}

class CitySlider extends StatelessWidget {
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
              child: const FadeInImage(
                  placeholder: AssetImage("assets/images/no-image.jpg"),
                  image:
                      NetworkImage("https://via.placeholder.com/500x300.png"),
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover),
            ),
          ],
        ));
  }
}
