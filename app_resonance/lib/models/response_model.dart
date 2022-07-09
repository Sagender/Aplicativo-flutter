// To parse this JSON data, do
//
//     final response = responseFromMap(jsonString);

import 'dart:convert';

class Responses {
  Responses({
    required this.response1,
    required this.response2,
    required this.response3,
    required this.response4,
  });

  Response response1;
  Response response2;
  Response response3;
  Response response4;
  String? id;

  factory Responses.fromJson(String str) => Responses.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Responses.fromMap(Map<String, dynamic> json) => Responses(
        response1: Response.fromMap(json["Response 1"]),
        response2: Response.fromMap(json["Response 2"]),
        response3: Response.fromMap(json["Response 3"]),
        response4: Response.fromMap(json["Response 4"]),
      );

  Map<String, dynamic> toMap() => {
        "Response 1": response1.toMap(),
        "Response 2": response2.toMap(),
        "Response 3": response3.toMap(),
        "Response 4": response4.toMap(),
      };
}

class Response {
  Response({
    required this.background,
    required this.calification,
    required this.description,
    required this.image,
    required this.imagen,
    required this.latitud,
    required this.longitud,
    required this.photo,
    required this.photograph,
    required this.picture,
    required this.title,
  });

  String background;
  double calification;
  String description;
  String image;
  String imagen;
  double latitud;
  double longitud;
  String photo;
  String photograph;
  String picture;
  String title;
  String? id;
  factory Response.fromJson(String str) => Response.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Response.fromMap(Map<String, dynamic> json) => Response(
        background: json["background"],
        calification: json["calification"].toDouble(),
        description: json["description"],
        image: json["image"],
        imagen: json["imagen"],
        latitud: json["latitud"].toDouble(),
        longitud: json["longitud"].toDouble(),
        photo: json["photo"],
        photograph: json["photograph"],
        picture: json["picture"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "background": background,
        "calification": calification,
        "description": description,
        "image": image,
        "imagen": imagen,
        "latitud": latitud,
        "longitud": longitud,
        "photo": photo,
        "photograph": photograph,
        "picture": picture,
        "title": title,
      };
}
