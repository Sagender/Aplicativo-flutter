// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

class Product {
  Product({
    required this.avalible,
    this.name,
    required this.picture,
    this.price,
  });

  bool avalible;
  String? name;
  String? picture;
  String? price;
  String? id;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        avalible: json["avalible"],
        name: json["name"],
        picture: json["picture"],
        price: json["price"],
      );

  Map<String, dynamic> toMap() => {
        "avalible": avalible,
        "name": name,
        "picture": picture,
        "price": price,
      };
}
