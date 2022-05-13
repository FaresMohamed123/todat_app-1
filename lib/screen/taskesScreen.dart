// ignore_for_file: file_names, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:todat_app/model/Task.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';
import '../widget/tasksList.dart';
import 'add_screen.dart';

class TaskesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTaskTitle) {
                       
                      }))));
        },
        backgroundColor: Colors.indigo[400],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.playlist_add_check, color: Colors.white, size: 40),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )
              ],
            ),

            /////////////////////////
            Container(
              padding: const EdgeInsets.all(10),
              child:  Text(
                '${Provider.of<TaskData>(context).tesk.length} Tasks',
                style:const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
