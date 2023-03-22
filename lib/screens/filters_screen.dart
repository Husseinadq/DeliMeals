
import 'package:delimeals/widgets/main_drawer.dart';
import 'package:delimeals/widgets/switch_listtile.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

 

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegen = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.save))],
      ),
      drawer: MainDrawer(),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Adjust your meal selection',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            BuildListTile(
                title: "Gluten-free",
                currentValue: _glutenFree,
                description: "Only include gluten-free meals",
                updateValue: ((newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                })),
            BuildListTile(
                title: "Lactose-free",
                currentValue: _lactoseFree,
                description: "Only include lactose-free meals",
                updateValue: ((newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                })),
            BuildListTile(
                title: "Vegetarian",
                currentValue: _vegetarian,
                description: "Only include Vegetarian meals",
                updateValue: ((newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                })),
            BuildListTile(
                title: "Vegan",
                currentValue: _vegen,
                description: "Only include vegan meals",
                updateValue: ((newValue) {
                  setState(() {
                    _vegen = newValue;
                  });
                }))
          ],
        ))
      ]),
    );
  }
}
