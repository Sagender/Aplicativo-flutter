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

class RumbosSlider extends StatefulWidget {
  @override
  RumbosSliderState createState() => RumbosSliderState();
}

class RumbosSliderState extends State<RumbosSlider> {
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
            const SizedBox(height: 0),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal, //Dirección del Scroll
                itemCount: 8,
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
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "Details"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: const FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image:
                        NetworkImage("https://via.placeholder.com/500x300.png"),
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ));
  }
}
