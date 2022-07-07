import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/contenido_slider.dart';

class DetailsDestinos extends StatelessWidget {
  const DetailsDestinos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 15,
              ),
              //_PosterAndTitle(),
              _Overview(),

              const SizedBox(
                height: 15,
              ),
              ContenidoDestinoSlider(),
              const SizedBox(
                height: 20,
              ),
              _Overview(),
              SizedBox(
                height: 20,
              ),
              ContenidoDestinoSlider(),

              SizedBox(
                height: 40,
              ),
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
      backgroundColor: Colors.white,
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
            "Detail_Destinos",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
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
            "Que visitar: Detail Destino",
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
