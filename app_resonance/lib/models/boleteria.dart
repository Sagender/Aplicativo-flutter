// To parse this JSON data, do
//
//     final boleteria = boleteriaFromMap(jsonString);

import 'dart:convert';

class Boleteria {
  Boleteria({
    required this.boletos1,
    required this.boletos2,
    required this.boletos3,
    required this.boletos4,
    required this.boletos5,
  });

  Boletos boletos1;
  Boletos boletos2;
  Boletos boletos3;
  Boletos boletos4;
  Boletos boletos5;
  String? id;

  factory Boleteria.fromJson(String str) => Boleteria.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Boleteria.fromMap(Map<String, dynamic> json) => Boleteria(
        boletos1: Boletos.fromMap(json["boletos 1"]),
        boletos2: Boletos.fromMap(json["boletos 2"]),
        boletos3: Boletos.fromMap(json["boletos 3"]),
        boletos4: Boletos.fromMap(json["boletos 4"]),
        boletos5: Boletos.fromMap(json["boletos 5"]),
      );

  Map<String, dynamic> toMap() => {
        "boletos 1": boletos1.toMap(),
        "boletos 2": boletos2.toMap(),
        "boletos 3": boletos3.toMap(),
        "boletos 4": boletos4.toMap(),
        "boletos 5": boletos5.toMap(),
      };
}

class Boletos {
  Boletos({
    required this.background,
    required this.calification,
    required this.description,
    required this.image,
    required this.precio1,
    required this.precio2,
    required this.precio3,
    required this.title,
  });

  String background;
  double calification;
  String description;
  String image;
  String precio1;
  String precio2;
  String precio3;
  String title;
  String? id;
  factory Boletos.fromJson(String str) => Boletos.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Boletos.fromMap(Map<String, dynamic> json) => Boletos(
        background: json["background"],
        calification: json["calification "].toDouble(),
        description: json["description"],
        image: json["image"],
        precio1: json["precio1"],
        precio2: json["precio2"],
        precio3: json["precio3"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "background": background,
        "calification ": calification,
        "description": description,
        "image": image,
        "precio1": precio1,
        "precio2": precio2,
        "precio3": precio3,
        "title": title,
      };
}
