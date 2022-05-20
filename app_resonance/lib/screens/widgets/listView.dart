// ignore_for_file: file_names, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

import 'constants.dart';

class CategoryListview extends StatefulWidget {
  @override
  _CategoryListviewState createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
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
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: currentSelect == index
                          ? FontWeight.bold
                          : FontWeight.w600,
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
