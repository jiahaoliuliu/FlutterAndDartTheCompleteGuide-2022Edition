import "package:flutter/material.dart";
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - Start adding some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          final mealItem = favoriteMeals[index];
          return MealItem(
            id: mealItem.id,
            title: mealItem.title,
            imageUrl: mealItem.imageUrl,
            duration: mealItem.duration,
            complexity: mealItem.complexity,
            affordability: mealItem.affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
