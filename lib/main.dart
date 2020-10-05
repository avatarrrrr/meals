import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/apps_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Come on cook?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
