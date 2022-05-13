// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todat_app/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskScreen;
  // ignore: use_key_in_widget_constructors
  AddTaskScreen(this.addTaskScreen);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newtext) {
              newTaskTitle = newtext;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: const Text('Add'),
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white),
          )
        ],
      ),
    );
  }
}
