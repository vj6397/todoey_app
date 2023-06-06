import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoey_app/modules/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    // Task(name: 'buy milk'),
    // Task(name: 'buy egg'),
    // Task(name: 'work out'),
  ];
  void addTask(String newTitle) {
    tasks.add(Task(name: newTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
