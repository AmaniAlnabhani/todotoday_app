// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:todotoday_app/widgets/task_tile.dart';

import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (Context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                listTileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                });
          });
    });
  }
}
