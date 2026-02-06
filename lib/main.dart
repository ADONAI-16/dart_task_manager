import 'dart:io';
import 'package:dart_task_manager/models/task.dart';
import 'package:dart_task_manager/services/task_service.dart';
import 'package:dart_task_manager/utils/exceptions.dart';

void main() async {
  TaskService service = TaskService();

  while (true) {
    print("\n--- Task Manager ---");
    print("1. Add Task");
    print("2. List Tasks");
    print("3. Update Status");
    print("4. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter title: ");
        String? title = stdin.readLineSync() ?? "";
        stdout.write("Enter description: ");
        String? desc = stdin.readLineSync() ?? "";
        try {
          await service.addTask(Task(title, desc));
          print("Task added successfully !");
        } catch (e) {
          print(e);
        }
        break;

      case '2':
        service.listTasks();
        break;

      case '3':
        stdout.write("Enter task index: ");
        int index = int.tryParse(stdin.readLineSync() ?? "-1") ?? -1;
        print("Select status: 0-pending, 1-inProgress, 2-completed");
        int s = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
        service.updateStatus(index, TaskStatus.values[s]);
        print("Status updated !");
        break;

      case '4':
        print("Exiting... ");
        return;

      default:
        print("Invalid option!");
    }
  }
}
