import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/destino1_model.dart';
import '../widgets/contenido_slider.dart';
import '../widgets/contenido_slider1.dart';

class DetailsDestinos1 extends StatelessWidget {
  const DetailsDestinos1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = ModalRoute.of(context)?.settings.arguments as Info;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(
            info: info,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 15,
              ),
              //_PosterAndTitle(),
              _Overview(
                info: info,
              ),

              const SizedBox(
                height: 15,
              ),
              ContenidoDestinoSlider(),
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
  final Info info;

  const _CustomAppBar({Key? key, required this.info}) : super(key: key);
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
          image: NetworkImage(info.background),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final Info info;

  const _Overview({Key? key, required this.info}) : super(key: key);
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
            info.title,
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          ),
          Text(
            info.desciption,
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
