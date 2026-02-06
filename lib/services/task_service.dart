import 'dart:async';
import 'package:dart_task_manager/models/task.dart';
import 'package:dart_task_manager/utils/exceptions.dart';

class TaskService {
  final List<Task> _tasks = [];

  Future<void> addTask(Task task) async {
    await Future.delayed(Duration(seconds: 1));
    if (task.title.isEmpty) {
      throw InvalidTaskException("Task title cannot be empty");
    }
    _tasks.add(task);
  }

  void listTasks() {
    if (_tasks.isEmpty) {
      print("No tasks available.");
      return;
    }
    for (var task in _tasks) {
      task.display();
    }
  }

  void updateStatus(int index, TaskStatus status) {
    if (index < 0 || index >= _tasks.length) {
      print("Invalid task index");
      return;
    }
    _tasks[index].status = status;
  }
}
