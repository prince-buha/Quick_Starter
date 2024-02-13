import 'dart:io';

void main() {
  String choice;
  List<List<int>> arr = [
    [11, 22, 33],
    [44, 55, 66],
    [77, 88, 99]
  ];

 do {

  print("$arr\n");
  print("1. Sum of all elements");
  print("2. Sum of a specific row");
  print("3. Sum of a specific column");
  print("4. Sum of diagonal elements");
  print("5. Sum of anti-diagonal elements");
  print("0. Exit");
    stdout.write("Enter your choice: ");
     choice = stdin.readLineSync()!;
    

    switch (choice) {
      case "1":
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
          for (int j = 0; j < arr[i].length; j++) {
            sum = sum + arr[i][j];
          }
        }
        print("Sum of all elements: $sum\n");
        break;

      case "2":
        stdout.write("Enter row number : ");
        int row = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int j = 0; j < arr[row - 1].length; j++) {
          sum = sum + arr[row - 1][j];
        }
        print("Sum of row $row: $sum\n");
        break;

      case "3":
        stdout.write("Enter column number : ");
        int col = int.parse(stdin.readLineSync()!);
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
          sum = sum + arr[i][col - 1];
        }
        print("Sum of column $col: $sum\n");
        break;

      case "4":
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
          sum = sum + arr[i][i];
        }
        print("Sum of diagonal elements: $sum\n");
        break;

      case "5":
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
          sum = sum + arr[i][arr.length - i - 1];
        }
        print("Sum of anti-diagonal elements: $sum\n");
        break;

      case "0":
        break;

      default:
        print("Invalid choice\n");
        break;
    }
  }
while(choice != 0 );
}
