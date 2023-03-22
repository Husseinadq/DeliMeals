import 'package:flutter/material.dart';

import './screens/filters_screen.dart';
import './screens/meal_screen_details.dart';
import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Map<String, bool> _filters = {
    'gluten':false,'lactose':false,'vegan':false,'vegetarian':false
  };
  void _setFilters(Map<String,bool> filterData){}

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
      initialRoute: '/',
      routes: {
        '/': (context) => TabScreen(),
        CategoryMealsScreen.routeName: ((context) => CategoryMealsScreen()),
        MealScreenDetails.routeName: (context) => MealScreenDetails(),
        FilterScreen.routeName: (context) => FilterScreen()
      },
    );
  }
}
