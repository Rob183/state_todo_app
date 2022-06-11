import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/taskData.dart';

class TaskTile extends StatelessWidget {
  final checked;
  final String taskTitle;
  final Function checkboxCallback;
  final int index;

  TaskTile({
    required this.checked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () =>
          Provider.of<Data>(context, listen: false).delTask(index),
      trailing: Checkbox(
        value: checked,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: checked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
