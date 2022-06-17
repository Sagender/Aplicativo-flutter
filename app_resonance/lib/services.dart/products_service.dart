import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/products.dart';

import "package:http/http.dart" as http;

class ProductsService extends ChangeNotifier {
  final String _baseUrl = "ripuy-app-default-rtdb.firebaseio.com";
  final List<Product> products = [];

  bool isLoading = true;

  ProductsService() {
    this.loadProducts();
  }

  Future<List<Product>> loadProducts() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, "products.json");
    final resp = await http.get(url);

    // ignore: unnecessary_question_mark
    final Map<String, dynamic> productsMap = json.decode(resp.body);

    productsMap.forEach((key, value) {
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      this.products.add(tempProduct);
    });
    this.isLoading = false;
    notifyListeners();

    return this.products;
  }
}
