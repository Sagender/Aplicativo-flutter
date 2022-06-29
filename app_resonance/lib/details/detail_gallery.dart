import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imageNetwork;
  final String title;
  final String autor;

  final String details;
  final int index;
  DetailsPage(
      {required this.imageNetwork,
      required this.title,
      required this.autor,
      required this.details,
      required this.index});
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
                        title,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'By $autor',
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
                    tag: 'logo$index',
                    child: Container(
                      child: ClipRRect(
                        child: Image(
                          image: NetworkImage(imageNetwork),
                          fit: BoxFit.contain,
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
