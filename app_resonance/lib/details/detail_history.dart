import 'package:appcarrusel/widgets/contenido_slider.dart';
import 'package:appcarrusel/widgets/custom_card_type_1.dart';
import 'package:appcarrusel/widgets/custom_place_card.dart';
import 'package:appcarrusel/widgets/product_card2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/reference_book.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String place =
        ModalRoute.of(context)?.settings.arguments.toString() ??
            "history.place";
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("La Tarumba",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 18)),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                Text("50"),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.route,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Container(
                  child: Text(
                    "Ea exercitation labore incididunt aliquip do. Culpa ea ipsum exercitation irure in voluptate. Anim quis culpa tempor veniam dolore."
                    "Ea exercitation labore incididunt aliquip do. Culpa ea ipsum exercitation irure in voluptate. Anim quis culpa tempor veniam dolore."
                    "Ea exercitation labore incididunt aliquip do. Culpa ea ipsum exercitation irure in voluptate. Anim quis culpa tempor veniam dolore.",
                    textAlign: TextAlign.justify,
                  ),
                ),
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
            "History place",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage("assets/images/no-image.jpg"),
          image: NetworkImage(
              "http://paseosescolares.pe/wp-content/uploads/2015/11/337.jpg"),
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
            "LA TARUMBA nace en 1984 a partir de un sueño compartido y motivado en la construcción de un Perú mejor. Un grupo de jóvenes artistas, liderados por Fernando Zevallos, iniciamos esta aventura con la convicción de la influencia del arte en los procesos de desarrollo de una sociedad. A partir del estudio y la práctica del arte escénico fuimos perfilando y consolidando una propuesta Artístico-Educativa, pionera e inspiradora, inclusiva y democrática; de identidad peruana en toda su dimensión, y a su vez, universal y contemporánea.",
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
