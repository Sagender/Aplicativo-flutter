// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, must_be_immutable, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../details/detail_navBar.dart';
import '../details/detail_doIt.dart';
import '../details/detail_eat.dart';
import '../widgets/custom_tab.dart';
import '../widgets/place_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.877);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerScreen(),
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          //Método para llamara a la búsqueda

          Padding(
              padding: EdgeInsets.only(top: 20, left: 43.0),
              child: Text(
                "Descubre con\n    Ripuy", //
                style: GoogleFonts.indieFlower(
                    color: Colors.black,
                    fontSize: 45.6,
                    fontWeight: FontWeight.w700),
              )),
          SearchContainer(),
          Container(
              color: Colors.white,
              height: 30,
              margin: EdgeInsets.only(left: 64.4, top: 8.8),
              child: DefaultTabController(
                length: 2, // cuenta cuantas tabs van a ser usadas
                child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding: EdgeInsets.only(left: 54.4, right: 14.4),
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
          PlaceSlider(),
          SizedBox(height: 25),

          // Agregar un contenedor para la última parte Container(),

          //
        ]),
      ),
    );
  }

//Barra superior
  AppBar appBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu, color: Colors.black));
        }));
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
