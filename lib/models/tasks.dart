//import 'package:flutter/material.dart';
class Tasks {
  final String name;
  bool isDone;
  Tasks({
    required this.name,
    this.isDone = false,
  });
  void doneChange() {
    isDone = !isDone;
  }
}
