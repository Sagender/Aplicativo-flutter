// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, must_be_immutable, dead_code

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/recommend_model.dart';
import 'details/doIt.dart';
import 'details/eat.dart';
import 'widgets/custom_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.877);
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: Container(
          child: ListView(children: <Widget>[
            //Método para llamara a la búsqueda
            SearchContainer(),
            Container(
                height: 30,
                margin: EdgeInsets.only(left: 64.4, top: 8.8),
                child: DefaultTabController(
                  length: 2, // cuenta cuantas tabs van a ser usadas
                  child: TabBar(
                      labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                      indicatorPadding:
                          EdgeInsets.only(left: 54.4, right: 14.4),
                      isScrollable: true,
                      labelColor: Color(0xFF000000),
                      unselectedLabelColor: Color(0xFF8a8a8a),
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                      indicator: RoundedRectangleTabIndicator(
                          color: Color(0xFF000000), weight: 2.4, width: 14.4),
                      tabs: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Doit()));
                            },
                            child: Tab(
                              child: Container(
                                child: Text("Cosas que hacer"),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => EatIt()));
                            },
                            child: Tab(
                              child: Container(
                                child: Text("Donde Comer"),
                              ),
                            ),
                          ),
                        )
                      ]),
                )),
            //Nombre de la página
            Padding(
                padding: EdgeInsets.only(top: 18, left: 30.0),
                child: Text(
                  "Descubre con Ripuy", //
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.6,
                      fontWeight: FontWeight.w700),
                )),
            //visor de imágenes
            Container(
              height: 218.4,
              margin: EdgeInsets.only(top: 16),
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  recommendations.length,
                  (int index) => Container(
                    margin: EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            recommendations[index].image.toString()),
                      ),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                        //Posición de Barranco,
                        bottom: 19.2,
                        left: 19.2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.8),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                            child: Container(
                              height: 36,
                              padding:
                                  EdgeInsets.only(left: 17.72, right: 14.4),
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
                                    recommendations[index].name.toString(),
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
                      "Barranco",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "No malograr atte. Daniel."
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
                  ]),
            )
            // Agregar un contenedor para la última parte Container(),

            //
          ]),
        ),
      ),
    );
  }

//Barra superior
  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
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
      ],
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

class Macondo {}
/*
  Container cardContainer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 0,
      ), //
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.only(
              top: 2,
              left: 40,
            ),
            child: Column(
              children: [
                FadeInImage(
                  image: AssetImage("assets/img/Lima10.jpg"),
                  width: 280,
                  //fit: BoxFit.cover,
                  placeholder:
                      AssetImage("assets/img/Lima10.jpg"), // imagen de carga
                ),
              ],
            ),
          ),
          Text(
            "Lima",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing"
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

// Buscador
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

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
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
              "assets/img/ripuyLogo.png",
              width: 32,
            ),
          ),
        )
      ],
    );
  }
}

class DoListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        //Navegacion
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Doit();
              },
            ),
          );
        },
        child: Container(
            height: 30,
            child: Text(
              "Cosas que hacer",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            )),
      ),
    );
  }
}

class EatListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        //Navegacion
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EatIt();
              },
            ),
          );
        },
        child: Container(
            height: 30,
            child: Text(
              "Donde Comer",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            )),
      ),
    );
  }
}*/
