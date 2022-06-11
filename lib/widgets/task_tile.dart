import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final checked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile(
      {required this.checked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
