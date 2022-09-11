import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

class ProductOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My shop'),
      ),
      body: ProductsGrid(),
    );
  }
}
