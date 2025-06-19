// void main() {
//   var noodle = Menuitem('veg noodles', '100');
//   var pizzaItem = pizza(['mashroom', 'papers'], 'veg pizza', '200');

//   print(noodle.format());
//   print(pizzaItem.format());
// }

// class Menuitem {
//   String title;
//   String price;

//   Menuitem(this.title, this.price);
//   String format() {
//     return '$title --> $price';
//   }
// }

// class pizza extends Menuitem {
//   List<String> toppings;
//   pizza(this.toppings, super.title, super.price);

//   @override
//   String format() {
//     return '${super.format()} with toppings: ${toppings}';
//   }
// }
import 'dart:io';

void main() {
  List<String> tasks = [];
  print("Welcome to  ToDo App");
  while (true) {
    print("Choose an option :\n1. Add Task\n2. View Tasks\n3. Exit");
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
      print('Exiting the app. Goodbye!');
      break;
    } else {
      print('Invalid choice, please try again.');
    }
  }
}
