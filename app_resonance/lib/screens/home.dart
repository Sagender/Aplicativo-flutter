// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, must_be_immutable, dead_code

import 'package:appcarrusel/widgets/place_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../details/navBar.dart';
import '../details/doIt.dart';
import '../details/eat.dart';

import '../widgets/custom_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.877);
    return Scaffold(
      drawer: NavBarScreen(),
      appBar: appBar(),
      body: SafeArea(
        child: Container(
          child: ListView(children: <Widget>[
            //Método para llamara a la búsqueda
            SearchContainer(),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 43.0),
                child: Text(
                  "Descubre con\n    Ripuy", //
                  style: GoogleFonts.indieFlower(
                      color: Colors.black,
                      fontSize: 45.6,
                      fontWeight: FontWeight.w700),
                )),
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
                                  MaterialPageRoute(builder: (_) => Eatit()));
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
            SizedBox(height: 15),
            CitySlider(),
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
                      "Barranco",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
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
                  ]),
            ),
            SizedBox(height: 5),

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
      backgroundColor: Colors.red,
      elevation: 0,
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
