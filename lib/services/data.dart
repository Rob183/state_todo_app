import 'package:flutter/material.dart';

import '../models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];
}
