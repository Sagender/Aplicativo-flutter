// To parse this JSON data, do
//
//     final tarumba = tarumbaFromMap(jsonString);

import 'dart:convert';

class DoIt {
  DoIt({
    required this.description,
    required this.picture,
    required this.title,
  });

  String description;
  String picture;
  String title;
  String? id;

  factory DoIt.fromJson(String str) => DoIt.fromMap(json.decode(str));

  factory DoIt.fromMap(Map<String, dynamic> json) => DoIt(
        description: json["description"],
        picture: json["picture"],
        title: json["title"],
      );
}
