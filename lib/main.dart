import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';
import 'screens/product_list_screen.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Shop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const ProductListScreen(),
        routes: {
          CartScreen.routeName: (_) => const CartScreen(),
        },
      ),
    );
  }
}
