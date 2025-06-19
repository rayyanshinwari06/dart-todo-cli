import 'dart:io';

void main() {
  List<String> tasks = [];
  print("Welcome to  ToDo App");
  while (true) {
    print(
      "Choose an option :\n1. Add Task\n2. View Tasks \n3. Delete task \n4. Exit",
    );
    String? choice = stdin.readLineSync();
    if (choice == '1') {
      print('Enter the task:');
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print('Task added successfully!');
      } else {
        print('Task cannot be empty');
      }
    } else if (choice == '2') {
      if (tasks.isEmpty) {
        print('No tasks available to view');
      } else {
        print('Your tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (choice == '3') {
      if (tasks.isEmpty) {
        print('No tasks available to delete');
      } else {
        print('Enter the task number to delete:');
        String? tasknumber = stdin.readLineSync();
        int? index = int.tryParse(tasknumber ?? '');
        if (index != null && index > 0 && index <= tasks.length) {
          String removedTask = tasks.removeAt(index - 1);
          print('Task $removedTask deleted successfully!');
        }
      }
    } else if (choice == '4') {
      print('Exiting the app. Goodbye!');
      break;
    } else {
      print('Invalid choice, please try again.');
    }
  }
}
