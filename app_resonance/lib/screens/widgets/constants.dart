// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color mBackgroundColor = Color(0xFFFEFEFE);
Color mPrimaryColor = Color(0xFFf36f7c);

Color mSencondaryColor = Color(0xFFfff2f3);

//const categoryList = [];

List<Lugares> placeList = [
  Lugares("Lima antigua", "Lugar 1", "assets/img/Lima2.jpg", 240),
  Lugares("Lima antigua", "Lugar 1", "assets/img/Lima3.jpg", 240),
  Lugares("Lima antigua", "Lugar 1", "assets/img/Lima4.jpg", 120),
  Lugares("Lima antigua", "Lugar 1", "assets/img/gaffiti2.png", 240),
  Lugares("Lima antigua", "Lugar 1", "assets/img/grafLima.png", 240),
  Lugares("Lima antigua", "Lugar 1", "assets/img/Lima2.jpg", 150),
];

class Lugares {
  String title;
  String subtitle;
  String imageUrl;
  double height;

  Lugares(this.title, this.subtitle, this.imageUrl, this.height);
}

class Place {
  //Atributos
  String description;
  String country;
  List<String> images;
  bool favorite;

  Place(this.description, this.country, this.images, this.favorite);
}

List<Place> getPlaceList() {
  return <Place>[
    Place(
        "Centro Histórico de la ciudad",
        " Lima",
        [
          "assets/img/Lima8.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima3.jpg",
        ],
        false),
    Place(
        "Centro Histórico de la ciudad",
        " Lima",
        [
          "assets/img/lima7.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima3.jpg",
        ],
        false),
    Place(
        "Centro Histórico de la ciudad",
        " Lima",
        [
          "assets/img/Lima9.png",
          "assets/img/lima4.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima3.jpg",
        ],
        false),
    Place(
        "Centro Histórico de la ciudad",
        " Lima",
        [
          "assets/img/Lima9.png",
          "assets/img/lima4.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima3.jpg",
        ],
        false),
    Place(
        "Centro Histórico de la ciudad",
        " Lima",
        [
          "assets/img/Lima10.jpg",
          "assets/img/lima7.jpg",
          "assets/img/lima4.jpg",
          "assets/img/lima3.jpg",
        ],
        false),
    Place(
        "Centro Histórico de la ciudad",
        " Lima",
        [
          "assets/img/Lima8.jpg",
          "assets/img/Lima9.png",
          "assets/img/lima4.jpg",
          "assets/img/lima3.jpg",
        ],
        false),
  ];
}
