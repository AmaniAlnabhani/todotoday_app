// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../models/tasks.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late final Function addTaskCallback;
  // AddTaskScreen(Null Function(dynamic newTasksTitle) param0,
  //     {required this.addTaskCallback});
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold,
              )),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
