import 'package:flutter/material.dart';

class SingleCategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  SingleCategoryItem({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
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
    );
  }
}
