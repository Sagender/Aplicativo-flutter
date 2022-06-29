// To parse this JSON data, do
//
//     final home = homeFromMap(jsonString);

import 'dart:convert';

class Places {
  Places({
    this.id,
    this.comentario,
    this.imagen,
    this.lugar,
    this.nombreUsuario,
  });

  String? id;
  String? comentario;
  String? imagen;
  String? lugar;
  String? nombreUsuario;

  factory Places.fromJson(String str) => Places.fromMap(json.decode(str));

  factory Places.fromMap(Map<String, dynamic> json) => Places(
        id: json["id"],
        comentario: json["comentario"],
        imagen: json["imagen"],
        lugar: json["lugar"],
        nombreUsuario: json["nombre_usuario"],
      );
}
