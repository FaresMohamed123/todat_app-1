// ignore_for_file: file_names

class Task {
  final String name;
  bool isDone;
  Task({required this.name,this.isDone =false});

  void doneChange() {
    isDone = !isDone;
  }
}
