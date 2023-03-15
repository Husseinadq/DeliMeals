import 'dart:ui';
import 'package:delimeals/screens/meal_screen_details.dart';
import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                labelLarge: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                labelMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                titleLarge:
                    TextStyle(fontFamily: 'RobotoCondensed', fontSize: 30),
                titleMedium:
                    TextStyle(fontFamily: 'RobotoCondensed', fontSize: 25),
                titleSmall:
                    TextStyle(fontFamily: 'RobotoCondensed', fontSize: 20),
              )),
      home: CategoriesScreen(),
      routes: {
        CategoryMealsScreen.routeName:((context) => CategoryMealsScreen()),
        MealScreenDetails.routeName:(context) => MealScreenDetails()
      },
    );
  }
}
