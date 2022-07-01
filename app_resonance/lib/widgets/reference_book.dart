import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class referenceBook extends StatelessWidget {
  const referenceBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            "Título del Lugar",
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          ),
        ),
        _PosterAndTitle(),
      ],
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
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
                  child: const FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image:
                        NetworkImage("https://via.placeholder.com/400x250.png"),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.star_outline, size: 15, color: Colors.grey),
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
              )
            ],
          ),
        )
      ]),
    );
  }
}
