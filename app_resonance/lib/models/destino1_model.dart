// To parse this JSON data, do
//
//     final info = infoFromMap(jsonString);

import 'dart:convert';

class Infos {
  Infos({
    required this.info1,
    required this.info2,
    required this.info3,
    required this.info4,
  });

  Info info1;
  Info info2;
  Info info3;
  Info info4;
  String? id;

  factory Infos.fromJson(String str) => Infos.fromMap(json.decode(str));

  factory Infos.fromMap(Map<String, dynamic> json) => Infos(
        info1: Info.fromMap(json["Info 1"]),
        info2: Info.fromMap(json["Info 2"]),
        info3: Info.fromMap(json["Info 3"]),
        info4: Info.fromMap(json["Info 4"]),
      );
}

class Info {
  Info({
    required this.background,
    required this.calification,
    required this.desciption,
    required this.title,
  });

  String background;
  int calification;
  String desciption;
  String title;
  String? id;

  factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

  factory Info.fromMap(Map<String, dynamic> json) => Info(
        background: json["background"],
        calification: json["calification "],
        desciption: json["desciption"],
        title: json["title"],
      );
}
