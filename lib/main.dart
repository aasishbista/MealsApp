import 'package:flutter/material.dart';
import 'categories_screen.dart';

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
        canvasColor: Color.fromRGBO(255, 254, 215, 1),
      ),
      home: CategoriesScreen(),
    );
  }
}
