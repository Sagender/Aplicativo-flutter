import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/place_model.dart';

class ReferenceBook extends StatelessWidget {
  final Place place;

  const ReferenceBook({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            place.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          ),
        ),
        _PosterAndTitle(
          place: place,
        ),
      ],
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Place place;

  const _PosterAndTitle({Key? key, required this.place}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(children: [
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(place.background),
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.star_outline, size: 15, color: Colors.red),
                  const SizedBox(width: 5),
                  Text("Valoración", style: textTheme.caption),
                  const SizedBox(width: 20),
                  const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text("Like",
                      style: textTheme.caption), //colodado como un String
                  const SizedBox(width: 20), //colodado como un String
                  const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text("Dislike",
                      style: textTheme.caption) //colodado como un String
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 20,
                ),
                child: Text(
                  place.context,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
