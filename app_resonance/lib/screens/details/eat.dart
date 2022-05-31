// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class EatIt extends StatelessWidget {
  const EatIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 400,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/comida1.jpg",
                height: 400,
                width: 500,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 30,
                top: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.arrow_back_ios,
                      )),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
