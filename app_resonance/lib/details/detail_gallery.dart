import 'package:appcarrusel/models/galeria_model.dart';
import 'package:flutter/material.dart';

import '../models/place_model.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final galeria = ModalRoute.of(context)?.settings.arguments as Galeria;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                Column(
                  children: [
                    Text(
                      galeria.title,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      galeria.autor,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  child: FadeInImage(
                    height: 250,
                    width: 450,
                    image: NetworkImage(galeria.picture),
                    fit: BoxFit.fitWidth,
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.map, color: Colors.black87)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
