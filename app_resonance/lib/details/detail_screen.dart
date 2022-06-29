import 'package:appcarrusel/widgets/custom_place_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/reference_book.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String place =
        ModalRoute.of(context)?.settings.arguments.toString() ?? "no.place";
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              //_PosterAndTitle(),
              _Overview(),
              const Divider(),
              const referenceBook(),

              const Divider(),
              const referenceBook(),

              const Divider(),
              const referenceBook(),

              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      "Ubicación",
                      style:
                          GoogleFonts.acme(fontSize: 20, color: Colors.black87),
                    ),
                  ),
                  CustomPlaceCard(),
                ],
              ),
              const SizedBox(
                height: 35,
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.red,
      expandedHeight: 350,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 10),
          color: Colors.black12,
          width: double.infinity,
          child: const Text(
            "place.title",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage("assets/images/no-image.jpg"),
          image: NetworkImage("https://via.placeholder.com/500x300.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  //Llamado a la propiedad

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Conoce un poco más",
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
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
        ],
      ),
    );
  }
}
