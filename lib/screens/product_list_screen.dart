import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_tile.dart';
import 'cart_screen.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  static final List<Product> products = [
    Product(
      id: '1',
      title: 'iPhone 14',
      price: 999.0,
      imageUrl:
          'https://images.unsplash.com/photo-1616410011236-7a42121dd981?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aXBob25lfGVufDB8fDB8fHww',
    ),
    Product(
      id: '2',
      title: 'Samsung S24',
      price: 799.0,
      imageUrl:
          'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2Ftc3VuZyUyMGdhbGF4eXxlbnwwfHwwfHx8MA%3D%3D',
    ),
     Product(
      id: '3',
      title: 'Redmi',
      price: 1000.0,
      imageUrl:
          'https://images.unsplash.com/photo-1635434651769-20cf663f3d7b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVkbWl8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: '4',
      title: 'Realme',
      price: 3799.0,
      imageUrl:
          'https://images.unsplash.com/photo-1695499405433-63b7d42e7326?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVhbG1lfGVufDB8fDB8fHww',
    ),
     Product(
      id: '5',
      title: 'Jio',
      price: 99.0,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1729708653214-dd98d09d9c1e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8amlvJTIwcGhvbmV8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: '6',
      title: 'Nokia',
      price: 9999.0,
      imageUrl:
          'https://images.unsplash.com/photo-1587017234728-932c80f3e56f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bm9raWF8ZW58MHx8MHx8fDA%3D',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE3F2FD), Color.fromARGB(255, 188, 67, 236)], 
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (_, i) => ProductTile(product: products[i]),
        ),
      ),
    );
  }
}
