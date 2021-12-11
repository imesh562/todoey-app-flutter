import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final tasks;
  TasksList({required this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTile: widget.tasks[index].name,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
