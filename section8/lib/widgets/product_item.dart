import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/product.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl),
    );
  }
}
