import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:state_todo_app/models/task.dart';
import 'package:state_todo_app/widgets/task_tile.dart';

import '../services/data.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => TaskListState();
}

class TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = Provider.of<Data>(context).tasks;

    return ListView.builder(
      padding: EdgeInsets.all(15.0),
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
            checked: taskList[index].isDone,
            taskTitle: taskList[index].name,
            checkboxCallback: (checkboxState) {
              setState(() {
                taskList[index].toggleDone();
              });
            });
      },
    );
  }
}
