import 'package:flutter/material.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tesk = [
    Task(name: 'go Shopping'),
    Task(name: 'buy a gift'),
    Task(name: 'repair this car'),
  ];

  void addTask(String newTaskTitle) {
    tesk.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTAsk(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tesk.remove(task);
    notifyListeners();
  }

}
