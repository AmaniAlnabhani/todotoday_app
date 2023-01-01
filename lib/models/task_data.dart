import 'package:flutter/material.dart';
import 'package:todotoday_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: 'go shopping'),
    Tasks(name: 'buy gift'),
    Tasks(name: 'go shopping'),
  ];
  void addTask(String newTaskTitle) {
    tasks.add(Tasks(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.doneChange();
    notifyListeners(); //update then re build
  }

  void deleteTask(Tasks task) {
    tasks.remove(task);
    notifyListeners();
  }
}
