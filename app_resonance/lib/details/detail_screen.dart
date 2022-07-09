import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/place_model.dart';
import '../widgets/reference_book.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final placeService = Provider.of<PlaceService>(context);
    //Corregir esta parte
    final place = ModalRoute.of(context)?.settings.arguments as Place;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(
            place: place,
            // place: placeService.place[0],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              //_PosterAndTitle(),
              _Overview(place: place),
              //buttonUbicacion(),

              ReferenceBook(place: place),
              const SizedBox(
                height: 35,
              ),
            ]),
          ),
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

class _CustomAppBar extends StatelessWidget {
  final Place place;

  const _CustomAppBar({Key? key, required this.place}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 350,
      floating: true,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        //centerTitle: true,
        //titlePadding: const EdgeInsets.all(0),
        //title: Container(
        //  alignment: Alignment.bottomCenter,
        //  padding: const EdgeInsets.only(bottom: 20, left: 20, right: 10),
        //  color: Colors.black12,
        //  width: double.infinity,
        //  child: Text(
        //    place.name,
        //    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        //    textAlign: TextAlign.center,
        //  ),
        //),
        background: FadeInImage(
          placeholder: AssetImage("assets/images/no-image.jpg"),
          image: NetworkImage(place.picture),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  //Llamado a la propiedad
  final Place place;

  const _Overview({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            place.name,
            style: GoogleFonts.acme(fontSize: 20, color: Colors.black87),
          ),
          Text(
            place.description,
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
