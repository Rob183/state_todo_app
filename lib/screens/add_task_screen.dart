import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_todo_app/models/task.dart';

import '../models/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              controller: myController,
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.lightBlueAccent)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false)
                    .addTaskList(myController.text);

                myController.clear();
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
