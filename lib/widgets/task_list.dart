import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:state_todo_app/models/taskData.dart';
import 'package:state_todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = Provider.of<Data>(context).tasks;

    return ListView.builder(
      padding: EdgeInsets.all(15.0),
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
          index: index,
            checked: taskList[index].isDone,
            taskTitle: taskList[index].name,
            checkboxCallback: (checkboxState) {
              Provider.of<Data>(context, listen: false).toggleDone(index);
            });
      },
    );
  }
}
