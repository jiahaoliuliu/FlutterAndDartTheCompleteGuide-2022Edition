import 'package:flutter/material.dart';

class MeanDetailsScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  const MeanDetailsScreen();

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('Meal details')),
      body: Center(
        child: Text('The meal - $mealId!'),
      ),
    );
  }
}
