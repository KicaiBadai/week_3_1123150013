import '../entities/product.dart';

// Abstract class: kontrak yang harus diikuti oleh implementasi
// Prinsip Dependency Inversion (DIP) dari SOLID
abstract class CartRepository {
  List<Product> getCartItems();
  void addItem(Product product);
  void removeItem(String productId); // Method baru untuk hapus item spesifik
  void removeAllItems();
  bool isItemInCart(String productId);
}
