import 'dart:io';

void main() {
  List<num> numberArray = [];
  print('Enter the number of elements:');
  int? n = int.parse(stdin.readLineSync()!);

  print('Enter the elements:');
  for (int i = 0; i < n; i++) {
    num element = num.parse(stdin.readLineSync()!);
    numberArray.insert(i, element);
  }

  if (numberArray.isEmpty) {
    print('The array is empty.');
    return;
  }

  num largest = numberArray[0];

  for (int i = 1; i < numberArray.length; i++) {
    if (numberArray[i] > largest) {
      largest = numberArray[i];
    }
  }

  print('The largest number in the array is $largest');
}
