import 'package:flutter/material.dart';

import '/screens/category_main_screen/meals_recipe_screen/catogery_meals_recipe_screen.dart';

import 'screens/category_main_screen/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Colors.pink,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 215, 1),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(fontFamily: 'Raleway', fontSize: 30)),
          ),
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 25,
                  fontWeight: FontWeight.bold))),
      home: CategoriesScreen(),
      routes: {
        MealsRecipeScreen.recipeRoute: (_) {
          return MealsRecipeScreen();
        }
      },
    );
  }
}
