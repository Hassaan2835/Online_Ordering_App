import 'package:flutter/material.dart';
import '../models/cart_item.dart';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => [..._items];

  int get itemCount => _items.length;

  double get totalAmount {
    var total = 0.0;
    for (var item in _items) {
      total += item.total;
    }
    return total;
  }

  void addItem(Product product, {String? variation}) {
    final index = _items.indexWhere((item) => 
      item.product.id == product.id && item.selectedVariation == variation
    );

    if (index >= 0) {
      _items[index].quantity += 1;
    } else {
      _items.add(CartItem(
        product: product, 
        selectedVariation: variation,
      ));
    }
    notifyListeners();
  }

  void removeItem(String productId, {String? variation}) {
    _items.removeWhere((item) => 
      item.product.id == productId && item.selectedVariation == variation
    );
    notifyListeners();
  }

  void updateQuantity(String productId, int quantity, {String? variation}) {
    final index = _items.indexWhere((item) => 
      item.product.id == productId && item.selectedVariation == variation
    );
    if (index >= 0) {
      if (quantity <= 0) {
        _items.removeAt(index);
      } else {
        _items[index].quantity = quantity;
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
