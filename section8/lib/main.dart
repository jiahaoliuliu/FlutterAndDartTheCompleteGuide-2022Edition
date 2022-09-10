import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_overview_screen.dart';
import './screens/product_details_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Version 3.x of provider
      builder: (ctx) => Products(),
      // Version 4.x+ of provider
      // create: (ctx) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange, // Deprecated
          fontFamily: 'Lato',
        ),
        home: ProductOverViewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
        },
      ),
    );
  }
}
