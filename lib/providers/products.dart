import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_DATA;

  bool _showFavoriteOnly = false;

  List<Product> get items {
    if (_showFavoriteOnly) {
      return [..._items].where((prod) => prod.isFavorite).toList();
    }
    return [..._items];
  }

  void showFavoriteOnly() {
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showAll() {
    _showFavoriteOnly = false;
    notifyListeners();
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
