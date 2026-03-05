import 'package:flutter/material.dart';
import 'package:pertemuan_3_1123150013/features/cart/presentation/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:pertemuan_3_1123150013/main.dart';

import 'features/cart/data/repositories/cart_repository_impl.dart';

// Mengatur semua dependency di satu tempat
Widget buildApp() {
  final cartRepository = CartRepositoryImpl();

  return ChangeNotifierProvider(
    create: (_) => CartProvider(repository: cartRepository),
    child: const MyApp(),
  );
}

void main() => runApp(buildApp());
