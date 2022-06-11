import 'package:flutter/material.dart';
import 'package:state_todo_app/models/task.dart';
import 'package:state_todo_app/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  TaskList(this.tasks);
  List<Task> tasks = [];

  @override
  State<TaskList> createState() => TaskListState();
}

class TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(15.0),
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            checked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
