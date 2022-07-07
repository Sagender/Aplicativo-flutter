import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      Text(
                        "title",
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'By Autor',
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
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: ClipRRect(
                        child: FadeInImage(
                          image: NetworkImage(
                              "https://www.rumbosdelperu.com/wp-content/uploads/2021/10/01-Barranco-Lima-Murales-Tiny-Travelogue-2.jpg"),
                          fit: BoxFit.cover,
                          placeholder: AssetImage("assets/images/no-image.jpg"),
                        ),
                      ),
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
      ),
    );
  }
}
