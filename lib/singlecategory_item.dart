import 'package:flutter/material.dart';
import 'catogery_meals_recipe_screen.dart';

class SingleCategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  SingleCategoryItem({this.title, this.color});

  void showMealsRecipeScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return MealsRecipeSccreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showMealsRecipeScreen(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          //to round the corner
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
