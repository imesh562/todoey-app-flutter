import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (choosed) {},
      ),
    );
  }
}
