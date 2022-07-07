// To parse this JSON data, do
//
//     final places = placesFromMap(jsonString);

import 'dart:convert';

class Places {
  Places({
    required this.place1,
    required this.place2,
    required this.place3,
    required this.place4,
  });

  Place place1;
  Place place2;
  Place place3;
  Place place4;
  String? id;

  factory Places.fromJson(String str) => Places.fromMap(json.decode(str));

  factory Places.fromMap(Map<String, dynamic> json) => Places(
        place1: Place.fromMap(json["Place 1"]),
        place2: Place.fromMap(json["Place 2"]),
        place3: Place.fromMap(json["Place 3"]),
        place4: Place.fromMap(json["Place 4"]),
      );
}

class Place {
  Place({
    required this.background,
    required this.context,
    required this.description,
    required this.name,
    required this.picture,
    required this.title,
    required this.ubication,
  });

  String background;
  String context;
  String description;
  String name;
  String picture;
  String title;
  String ubication;
  String? id;

  factory Place.fromJson(String str) => Place.fromMap(json.decode(str));

  factory Place.fromMap(Map<String, dynamic> json) => Place(
        background: json["background"],
        context: json["context"],
        description: json["description"],
        name: json["name"],
        picture: json["picture"],
        title: json["title"],
        ubication: json["ubication"],
      );
}
