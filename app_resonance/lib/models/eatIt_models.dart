// To parse this JSON data, do
//
//     final comidas = comidasFromMap(jsonString);

import 'dart:convert';

import 'comer_model.dart';

class Comidas {
  Comidas({
    required this.comer1,
    required this.comer2,
    required this.comer4,
    required this.comer5,
    required this.comer6,
    required this.comer7,
  });

  EatIt comer1;
  EatIt comer2;
  EatIt comer4;
  EatIt comer5;
  EatIt comer6;
  EatIt comer7;
  String? id;

  factory Comidas.fromJson(String str) => Comidas.fromMap(json.decode(str));

  factory Comidas.fromMap(Map<String, dynamic> json) => Comidas(
        comer1: EatIt.fromMap(json["comer 1"]),
        comer2: EatIt.fromMap(json["comer 2"]),
        comer4: EatIt.fromMap(json["comer 4"]),
        comer5: EatIt.fromMap(json["comer 5"]),
        comer6: EatIt.fromMap(json["comer 6"]),
        comer7: EatIt.fromMap(json["comer 7"]),
      );
}
