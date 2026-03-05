import 'package:flutter/material.dart';
import '../../features/cart/presentation/pages/catalog_pages.dart';
import '../../features/cart/presentation/pages/cart_page.dart';

class AppRouter {
  static const String catalog = "/";
  static const String cart = "/cart";

  static Map<String, WidgetBuilder> routes = {
    catalog: (context) => const CatalogPage(),
    cart: (context) => const CartPage(),
  };
}
