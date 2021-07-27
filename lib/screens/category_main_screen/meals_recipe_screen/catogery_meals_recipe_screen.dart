import 'package:flutter/material.dart';

class MealsRecipeScreen extends StatelessWidget {
  // final String id;
  // final String title;

  // MealsRecipeScreen({this.id, this.title});

  static const recipeRoute = '/meals_recipe';

  @override
  Widget build(BuildContext context) {
    //extracting the push data using argument and Modalroute
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Center(
        child: Text('This is your food recipe for $title'),
      ),
    );
  }
}
