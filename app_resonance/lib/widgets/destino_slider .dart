import 'package:flutter/material.dart';

class DestinoSlider extends StatefulWidget {
  @override
  DestinoSliderState createState() => DestinoSliderState();
}

class DestinoSliderState extends State<DestinoSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 430,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal, //Dirección del Scroll
                itemCount: 4,
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
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: 300,
        height: 350,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "DetailsDestinos"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: const FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(
                        "https://pbs.twimg.com/media/DEubcEwVYAAkaM6.jpg"),
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Barranco",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "No ."
                      " and typesetting industry. Lorem Ipsum has been"
                      " the industry's standard dummy text ever since "
                      "the 1500s, when an unknown printer took a galley of ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
