import 'package:flutter/material.dart';

class MealsRecipeSccreen extends StatelessWidget {
  const MealsRecipeSccreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals Recipe'),
      ),
      body: Container(
        child: Text('This is your food recipe'),
      ),
    );
  }
}
