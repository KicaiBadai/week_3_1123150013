import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './core/routes/app_router.dart';
import './features/cart/presentation/providers/cart_provider.dart'; // Path yang benar
import './features/cart/data/repositories/cart_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartProvider(repository: CartRepositoryImpl()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter E-Commerce',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppRouter.catalog,
        routes: AppRouter.routes,
      ),
    );
  }
}
