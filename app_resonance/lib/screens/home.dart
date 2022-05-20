// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, must_be_immutable, dead_code

import 'package:appcarrusel/screens/widgets/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CategoryListview(),
          SearchContainer(),
          //Card de la visa Home
          cardContainer()
        ],
      ),
    );
  }

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
                  fit: BoxFit.cover,
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
            " It has survived not only five centuries, but also"
            " the leap into electronic typesetting, remaining"
            "essentially unchanged. ",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
          /*Text(
                'Read more',
                style: TextStyle(
                    color: mPrimaryColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              )*/
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

class CategoryListview extends StatefulWidget {
  @override
  _CategoryListviewState createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    // solo funciona con Statefull
                    currentSelect = index;
                  });
                },
                child: Container(
                  //padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                  margin: EdgeInsets.only(left: 55),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: currentSelect == index
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: currentSelect == index
                          ? mPrimaryColor
                          : Colors.black54,
                    ),
                  ),
                ),
              )),
        ));
  }
}

const categoryList = [
  "Cosas que hacer",
  "Donde comer",
];
