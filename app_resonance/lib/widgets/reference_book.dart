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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
          child: Text(
            place.title,
            //textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
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
              buttonSection(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.star_outline, size: 15, color: Colors.red),
                  const SizedBox(width: 5),
                  Text("Valoración: 8.5", style: textTheme.caption),
                  const SizedBox(width: 20),
                  const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text("Likes: 580",
                      style: textTheme.caption), //colodado como un String
                  const SizedBox(width: 20), //colodado como un String
                  const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text("Dislike: 20",
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

class buttonSection extends StatelessWidget {
  const buttonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customButton(icon: Icons.call, text: "CALL"),
          customButton(icon: Icons.route, text: "ROUTE"),
          customButton(icon: Icons.share, text: "SHARE")
        ],
      ),
    );
  }
}

class customButton extends StatelessWidget {
  //Argumentos
  final IconData icon;
  final String text;

  const customButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.red),
        SizedBox(
          height: 10,
        ),
        Text(text,
            style: TextStyle(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold))
      ],
    );
  }
}
