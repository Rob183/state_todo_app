import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class Data extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  void addTaskList(newTaskName) {
    _tasks.add(Task(name: newTaskName));
    notifyListeners();
  }

  void toggleDone(index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void delTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  List<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
}
