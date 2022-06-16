// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/recommend_model.dart';

class RecomendadosPage extends StatelessWidget {
  const RecomendadosPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.877);
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: ListView(children: <Widget>[
          //Método para llamara a la búsqueda
          SearchContainer(),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 43.0),
              child: Text(
                "NUESTROS USUARIOS RECOMIENDAN...", //
                style: GoogleFonts.indieFlower(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              )),
          Container(
            height: 30,
            margin: EdgeInsets.only(left: 64.4, top: 8.8),
          ),
          SizedBox(height: 15),
          //Nombre de la página

          //visor de imágenes
          Container(
            height: 218.4,
            margin: EdgeInsets.only(top: 16),
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendations1.length,
                (int index) => Container(
                  margin: EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          recommendations1[index].image.toString()),
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      bottom: 19.2,
                      left: 19.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(left: 17.72, right: 14.4),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/alfiler.png",
                                  width: 20.0,
                                ),
                                SizedBox(
                                  width: 9.52,
                                ),
                                Text(
                                  recommendations1[index].name.toString(),
                                  style: GoogleFonts.macondo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 16.8,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "BARRANCO",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "¿Por que recomiendan este lugar?   "
                    "Es un lugar especial para los soñadores, pues cuenta con calles románticas, conciertos y un gran patrimonio artístico. Las parejas pasean por los callejones llenos de restaurantes del viejo mundo, mientras los surfistas se reúnen para montar las olas de la costa oeste del Perú. Contempla los colores brillantes de las casas coloniales y republicanas que están esparcidas por esta zona. ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ]),
          ),
          Container(
            height: 218.4,
            margin: EdgeInsets.only(top: 16),
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendations2.length,
                (int index) => Container(
                  margin: EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          recommendations2[index].image.toString()),
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      bottom: 19.2,
                      left: 19.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(left: 17.72, right: 14.4),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/alfiler.png",
                                  width: 20.0,
                                ),
                                SizedBox(
                                  width: 9.52,
                                ),
                                Text(
                                  recommendations2[index].name.toString(),
                                  style: GoogleFonts.macondo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 16.8,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "CATEDRAL DE LIMA",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "¿Por que recomiendan este lugar?   "
                    "Es el templo religioso mas importante del Peru, al visitarla podemos concoer los tesoros, lienzos, capillas e incluso la cripta con los restos de Francisco Pizarro",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ]),
          ),
          Container(
            height: 218.4,
            margin: EdgeInsets.only(top: 16),
            child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendations3.length,
                (int index) => Container(
                  margin: EdgeInsets.only(right: 28.8),
                  width: 333.6,
                  height: 218.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          recommendations3[index].image.toString()),
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      bottom: 19.2,
                      left: 19.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.8),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(left: 17.72, right: 14.4),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/alfiler.png",
                                  width: 20.0,
                                ),
                                SizedBox(
                                  width: 9.52,
                                ),
                                Text(
                                  recommendations3[index].name.toString(),
                                  style: GoogleFonts.macondo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 16.8,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "LARCOMAR",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "¿Por que recomiendan este lugar?   "
                    "Es uno de los centros comerciales mas importantes de Lima, posee una vista de lujo hacia el mar, ya que se encuentra construido en la parte superior de un acantilado."
                    "Cuenta con tinedas reconocidas, discotecas, restaurantes, etc. Un buen lugar para poder ir a pasear.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ]),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(""),
                    Text(
                      "¿QUE NOS SUGIERES PARA MEJORAR?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:
                            Color.fromARGB(255, 160, 37, 28).withOpacity(1.0),
                      ),
                    ),
                    Text(""),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      minLines: 1,
                      maxLines: 3,
                      textAlign: TextAlign.justify,

                      /*estilos por ver
              style: TextStyle(
                fontSize: 14,
                height: 1.5),*/
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hoverColor: Color.fromARGB(255, 202, 108, 91),
                          hintText: 'Dejanos tu comentario'),
                    )
                  ]))
        ]),
      ),
    );
  }

//Barra superior
  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      /*leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        onPressed: () {},
      ),
      actions: [
        UnconstrainedBox(
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/images/ripuyLogo.png",
              width: 32,
            ),
          ),
        )
      ]*/
    );
  }

//Método de búsqueda
  Column SearchContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 16,
            top: 1,
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey[400],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
              suffixIcon: Padding(
                padding: EdgeInsets.only(
                  right: 24,
                  left: 8,
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
