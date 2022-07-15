import 'package:appcarrusel/models/response_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/contenido_slider1.dart';

class DetailsDestinos extends StatelessWidget {
  const DetailsDestinos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final response = ModalRoute.of(context)?.settings.arguments as Response;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(
            response: response,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 15,
              ),
              //_PosterAndTitle(),
              _Overview(
                response: response,
              ),

              const SizedBox(
                height: 15,
              ),
              ContenidoDestinoSlider1(),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 20,
              ),

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
  final Response response;

  const _CustomAppBar({Key? key, required this.response}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 350,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
          placeholder: AssetImage("assets/images/no-image.jpg"),
          image: NetworkImage(response.background),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final Response response;

  const _Overview({Key? key, required this.response}) : super(key: key);
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
            response.title,
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          ),
          Text(
            response.description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buttonUbicacion(),
        ],
      ),
    );
  }
}

class buttonUbicacion extends StatelessWidget {
  const buttonUbicacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
            shape: const StadiumBorder(),
            elevation: 0),
        //onPressed: () => displayDialogAndorid(context)
        onPressed: () {},
        child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Ubicación", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
