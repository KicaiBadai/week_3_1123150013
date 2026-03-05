import 'package:flutter/material.dart';

import '../../domain/repositories/cart_repository.dart';
import '../../domain/entities/product.dart';

// Provider/Notifier: jembatan antara domain dan UI
// Menggunakan CartRepository, bukan langsung manipulasi data
class CartProvider extends ChangeNotifier {
  final CartRepository _repository;

  // Dependency Injection melalui constructor
  CartProvider({required CartRepository repository}) : _repository = repository;

  List<Product> get items => _repository.getCartItems();

  void addItem(Product product) {
    _repository.addItem(product);
    notifyListeners();
  }

  // Method baru untuk menghapus item berdasarkan ID
  void removeItem(String productId) {
    _repository.removeItem(productId);
    notifyListeners();
  }

  void removeAll() {
    _repository.removeAllItems();
    notifyListeners();
  }

  bool isInCart(String productId) => _repository.isItemInCart(productId);
}
