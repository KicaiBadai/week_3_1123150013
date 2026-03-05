import '../entities/product_cart.dart';

abstract class CartRepository {
  List<Product> getItems();
  void add(Product product);
  void removeAll();
}
