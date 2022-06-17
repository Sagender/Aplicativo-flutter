import 'package:flutter/material.dart';

import '../models/products.dart';

class ProductsService extends ChangeNotifier {
  final String _baseUrl = "https://ripuy-app-default-rtdb.firebaseio.com";
  final List<Product> products = [];
}
