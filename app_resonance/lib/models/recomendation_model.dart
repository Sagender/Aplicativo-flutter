// To parse this JSON data, do
//
//     final recomendations = recomendationsFromMap(jsonString);

import 'dart:convert';

class Recomendations {
  Recomendations({
    required this.recomendation1,
    required this.recomendation2,
    required this.recomendation3,
    required this.recomendation4,
  });

  Recomendation recomendation1;
  Recomendation recomendation2;
  Recomendation recomendation3;
  Recomendation recomendation4;

  factory Recomendations.fromJson(String str) =>
      Recomendations.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Recomendations.fromMap(Map<String, dynamic> json) => Recomendations(
        recomendation1: Recomendation.fromMap(json["recomendation 1"]),
        recomendation2: Recomendation.fromMap(json["recomendation 2"]),
        recomendation3: Recomendation.fromMap(json["recomendation 3"]),
        recomendation4: Recomendation.fromMap(json["recomendation 4"]),
      );

  Map<String, dynamic> toMap() => {
        "recomendation 1": recomendation1.toMap(),
        "recomendation 2": recomendation2.toMap(),
        "recomendation 3": recomendation3.toMap(),
        "recomendation 4": recomendation4.toMap(),
      };
}

class Recomendation {
  Recomendation({
    required this.picture,
    required this.title,
  });

  String picture;
  String title;
  String? id;

  factory Recomendation.fromJson(String str) =>
      Recomendation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Recomendation.fromMap(Map<String, dynamic> json) => Recomendation(
        picture: json["picture"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "picture": picture,
        "title": title,
      };
}
