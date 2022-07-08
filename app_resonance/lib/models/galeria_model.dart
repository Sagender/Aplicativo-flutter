// To parse this JSON data, do
//
//     final galeria = galeriaFromMap(jsonString);

import 'dart:convert';

class Galeria {
  Galeria({
    required this.autor,
    required this.picture,
    required this.title,
  });

  String autor;
  String picture;
  String title;
  String? id;

  factory Galeria.fromJson(String str) => Galeria.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Galeria.fromMap(Map<String, dynamic> json) => Galeria(
        autor: json["autor"],
        picture: json["picture"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "autor": autor,
        "picture": picture,
        "title": title,
      };
}
