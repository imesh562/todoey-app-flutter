import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkBoxCallBack;
  final Function() deletecallBack;

  TaskTile({
    required this.isChecked,
    required this.taskTile,
    required this.checkBoxCallBack,
    required this.deletecallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: deletecallBack,
    );
  }
}
