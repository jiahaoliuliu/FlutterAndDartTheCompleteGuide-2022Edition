import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  // final String title;
  // final String imageUrl;
  // bool isFavorite;

  // ProductDetailsScreen(
  //   this.title,
  // );

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    // ..

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
