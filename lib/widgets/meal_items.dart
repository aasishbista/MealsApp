import 'package:flutter/material.dart';
import '/models/meal.dart';

class MealItem extends StatelessWidget {
  final String mealTitle;
  final String mealImage;
  final List<String> categories;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem({
    this.mealTitle,
    this.mealImage,
    this.categories,
    this.duration,
    this.complexity,
    this.affordability,
  });

  String get complexityLevel {
    switch (complexity) {
      case Complexity.Simple:
        return "Simple";
        break;
      case Complexity.Challenging:
        return "Challenging";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
      default:
        return "NA";
        break;
    }
  }

  String get affordibilityLevel {
    switch (affordability) {
      case Affordability.Affordable:
        return "Affordable";
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
      case Affordability.Luxurious:
        return "Luxurious";
        break;
      default:
        return "NA";
    }
  }

  void showMealDetailScreen() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showMealDetailScreen();
      },
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        mealImage,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black45),
                        child: FittedBox(
                            child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            mealTitle,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                      ),
                      bottom: 10,
                      right: 10,
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.schedule),
                              SizedBox(
                                width: 6,
                              ),
                              Text('$duration min')
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.work),
                              SizedBox(
                                width: 6,
                              ),
                              Text(complexityLevel)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.attach_money),
                              SizedBox(
                                width: 6,
                              ),
                              Text(affordibilityLevel),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
