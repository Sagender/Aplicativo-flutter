// To parse this JSON data, do
//
//     final tarumba = tarumbaFromMap(jsonString);

import 'dart:convert';

class Tarumbas {
  Tarumbas({
    required this.tarumba1,
    required this.tarumba2,
    required this.tarumba3,
    required this.tarumba4,
    required this.tarumba5,
  });

  Tarumba tarumba1;
  Tarumba tarumba2;
  Tarumba tarumba3;
  Tarumba tarumba4;
  Tarumba tarumba5;

  factory Tarumbas.fromJson(String str) => Tarumbas.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tarumbas.fromMap(Map<String, dynamic> json) => Tarumbas(
        tarumba1: Tarumba.fromMap(json["Tarumba 1"]),
        tarumba2: Tarumba.fromMap(json["Tarumba 2"]),
        tarumba3: Tarumba.fromMap(json["Tarumba 3"]),
        tarumba4: Tarumba.fromMap(json["Tarumba 4"]),
        tarumba5: Tarumba.fromMap(json["Tarumba 5"]),
      );

  Map<String, dynamic> toMap() => {
        "Tarumba 1": tarumba1.toMap(),
        "Tarumba 2": tarumba2.toMap(),
        "Tarumba 3": tarumba3.toMap(),
        "Tarumba 4": tarumba4.toMap(),
        "Tarumba 5": tarumba5.toMap(),
      };
}

class Tarumba {
  Tarumba({
    required this.picture,
    required this.title,
  });

  String picture;
  String title;
  String? id;

  factory Tarumba.fromJson(String str) => Tarumba.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tarumba.fromMap(Map<String, dynamic> json) => Tarumba(
        picture: json["picture"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "picture": picture,
        "title": title,
      };
}
