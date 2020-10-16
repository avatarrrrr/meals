import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/models/meals.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;

  const FavoriteScreen(this._favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return _favoriteMeals.isEmpty
        ? Center(
            child: Text('Você ainda não adicionou nada aqui :('),
          )
        : ListView.builder(
            itemCount: _favoriteMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(meal: _favoriteMeals[index]);
            },
          );
  }
}
