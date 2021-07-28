import 'package:flutter/material.dart';
import '../../widgets/singlecategory_item.dart';
import '../../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals App"),
      ),
      body: GridView(
        children: [
          ...categoryDummyData.map((item) {
            return SingleCategoryItem(
              id: item.id,
              color: item.bgcolor,
              title: item.title,
            );
          })
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
