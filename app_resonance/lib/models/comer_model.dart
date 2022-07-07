import 'dart:convert';

class EatIt {
  EatIt({
    required this.description,
    required this.picture,
    required this.title,
  });

  String description;
  String picture;
  String title;
  String? id;

  factory EatIt.fromJson(String str) => EatIt.fromMap(json.decode(str));

  factory EatIt.fromMap(Map<String, dynamic> json) => EatIt(
        description: json["description"],
        picture: json["picture"],
        title: json["title"],
      );
}
