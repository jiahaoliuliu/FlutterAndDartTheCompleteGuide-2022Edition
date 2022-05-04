import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const RouteName = "/meal-details";

  const MealDetailsScreen();

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Container(
        child: Text('Meal details $mealId'),
      ),
    );
  }
}
