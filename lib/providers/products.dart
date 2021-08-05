import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_DATA;

  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
