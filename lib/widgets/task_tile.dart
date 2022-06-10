import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: checked,
        onChanged: (newValue) {
          setState(() {
            checked = newValue!;
          });
        },
      ),
      title: Text(
        'this is task',
        style:
            TextStyle(decoration: checked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
