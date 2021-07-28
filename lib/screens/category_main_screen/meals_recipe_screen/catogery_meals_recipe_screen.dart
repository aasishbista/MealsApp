import 'package:flutter/material.dart';
import '/data/dummy_data.dart';
import '/widgets/meal_items.dart';

class MealsRecipeScreen extends StatelessWidget {
  static const recipeRoute = '/meals_recipe';

  @override
  Widget build(BuildContext context) {
    //fetching the pushed data(arguments) from previous
    //screen using Modalroute
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final mealId = routeArgs['id'];
    final selectedCategoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categoryIdList.contains(mealId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              mealTitle: selectedCategoryMeals[index].title,
              mealImage: selectedCategoryMeals[index].imageUrl,
              duration: selectedCategoryMeals[index].duration,
              complexity: selectedCategoryMeals[index].complexity,
              affordability: selectedCategoryMeals[index].affordability,
            );
          },
          itemCount: selectedCategoryMeals.length,
        ));
  }
}
