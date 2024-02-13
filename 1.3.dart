import 'dart:io';

void main() {
  List<String> food = ['Dhosa', 'Idli', 'Bhajipau', 'Pizza'];

  while (true) {
    print("$food\n");
    print("Menu:");
    print("press for 1. Add Food");
    print("press for 2. Update Food");
    print("press for 3. Delete Food");
    print("press for 4. View Foods");
    print("press for 5. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    print("\n");

    switch (choice) {
      case 1:
        stdout.write("Enter the food to add: ");
        String newFood = stdin.readLineSync()!;
        food.add(newFood);
        print("$newFood added.");
        break;

      case 2:
        stdout.write("Enter the index of the food to update: ");
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 0 && index < food.length) {
          stdout.write("Enter the updated food: ");
          String updatedFood = stdin.readLineSync()!;
          food[index] = updatedFood;
          print("Food updated.");
        } else {
          print("Invalid index.");
        }
        break;

      case 3:
        stdout.write("Enter the index of the food to delete: ");
        int deleteIndex = int.parse(stdin.readLineSync()!);
        if (deleteIndex >= 0 && deleteIndex < food.length) {
          String deletedFood = food.removeAt(deleteIndex);
          print("$deletedFood deleted.");
        } else {
          print("Invalid index.");
        }
        break;

      case 4:
        print("Food List:");
        for (int i = 0; i < food.length; i++) {
          print("Food $i: ${food[i]}");
        }
        break;

      case 5:
        print("Exiting the program.");
        return;

      default:
        print("Invalid choice. Please select a valid option.");
    }
  }
}
