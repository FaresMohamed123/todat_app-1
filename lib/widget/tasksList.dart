// ignore_for_file: file_names, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todat_app/widget/task_list.dart';
import 'package:provider/provider.dart';

import '../model/Task.dart';
import '../model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tesk.length,
            itemBuilder: (context, index) {
              return TaskTile(
                isChecked: taskData.tesk[index].isDone,
                taskTitle: taskData.tesk[index].name,
                checkboxChange: (newValue) {
                  taskData.updateTAsk(taskData.tesk[index]);
                },
                listTileDelete: () {
                  taskData.deleteTask(taskData.tesk[index]);
                },
              );
            });
      },
    );
  }
}
