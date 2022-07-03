import 'package:appcarrusel/models/home_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

Future<Places> getUsuarios() async {
  var url = Uri.https('apiflutter.azurewebsites.net/api', 'api/post.php');
  // var url = Uri.https('62abfa10bd0e5d29af187068.mockapi.io', '/prueba/api/v1/empleados');
  final response = await http.get(url);
  // String stringValue = response.toString();
  // stringValue = stringValue.replaceAll("[", "").replaceAll("]", "");
  // print(json.decode(response.body));
  return Places.fromJson(response.body);
}

class PlaceSlider extends StatefulWidget {
  @override
  PlaceSliderState createState() => PlaceSliderState();
}

class PlaceSliderState extends State<PlaceSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  @override
  Widget build(BuildContext context) {
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
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: 300,
        height: 400,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "Details"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(
                        "http://paseosescolares.pe/wp-content/uploads/2015/11/337.jpg"),
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Lugares que visitar",
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
                    const Text(
                      "Barranco",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "No ."
                      " and typesetting industry. Lorem Ipsum has been"
                      " the industry's standard dummy text ever since "
                      "the 1500s, when an unknown printer took a galley of "
                      "type and scrambled it to make a type specimen book."
                      " It has survived not only five centuries, but also",
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
