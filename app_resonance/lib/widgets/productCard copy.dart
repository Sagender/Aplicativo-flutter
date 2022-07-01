import 'package:appcarrusel/screens/alert_scren.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 10),
          width: double.infinity,
          height: 200,
          decoration: _cardBorders(),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              const Backgroungimage("assets/images/no-image.jpg"),
              _ProductDetails(),
              Positioned(top: 0, child: _PriceTag())
            ],
          ),
        ));
  }

  BoxDecoration _cardBorders() => BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(0, 7), blurRadius: 10),
        ],
      );
}

class _PriceTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "S/12",
        style: TextStyle(fontSize: 20, color: Colors.black87),
      ),
      width: 100,
      height: 70,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
        ),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          height: 70,
          //color: Colors.red,
          decoration: _buildBoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "La tarumba-Entrada Adulto",
                style: GoogleFonts.indieFlower(
                    fontSize: 20,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "ID del producto",
                style: GoogleFonts.indieFlower(
                  fontSize: 10,
                  color: Colors.black87,
                ),
              )
            ],
          )),
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          topRight: Radius.circular(0),
        ),
      );
}

class Backgroungimage extends StatelessWidget {
  final String? url;

  const Backgroungimage(String? picture, {Key? key, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 300,
        child: const FadeInImage(
          placeholder: AssetImage("assets/images/jar-loading.gif"),
          image: NetworkImage("https://via.placeholder.com/400x300.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
