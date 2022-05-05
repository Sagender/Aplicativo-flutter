// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:app_resonance/constants.dart';
import 'package:flutter/material.dart';

// clase que hace referencia al boxCotainer Card
class cardContainer extends StatelessWidget {
  final String image;
  final String title;
  final Function press;

  const cardContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: KShadowColor,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              press;
            }, //parece un error ¿No sé cuál?//se solucionó
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(image, height: 350, width: 450),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.w100),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
