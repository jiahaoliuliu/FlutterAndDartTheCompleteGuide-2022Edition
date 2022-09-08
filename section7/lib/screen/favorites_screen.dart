import "package:flutter/material.dart";
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You have no favorites yet - Start adding some'),
    );
  }
}
