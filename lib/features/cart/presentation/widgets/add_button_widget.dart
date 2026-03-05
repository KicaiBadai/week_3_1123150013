import 'package:flutter/material.dart';
import 'package:pertemuan_3_1123150013/features/cart/domain/entities/product.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;

  const AddButtonWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );

    return TextButton(
      onPressed: isInCart
          ? null
          : () => context.read<CartProvider>().addItem(product),
      child: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : const Text('TAMBAH'),
    );
  }
}
