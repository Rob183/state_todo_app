import 'package:flutter/material.dart';
import 'package:state_todo_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15.0),
      children: [
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
