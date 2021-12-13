import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final Task task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTile: task.name,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              deletecallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
