import 'package:flutter/material.dart';

class BuildListTile extends StatelessWidget {
  String title;
  var currentValue;
  String description;
 final Function(bool) updateValue;
   BuildListTile(
      {required this.title,
      required this.currentValue,
      required this.description,
      required this.updateValue});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
        title: Text(title),
        value: currentValue,
        subtitle: Text(description),
        onChanged: updateValue);
  }
}
