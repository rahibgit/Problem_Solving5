import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

void ReadArray(List Array, int element) {
  int num;
  for (var i = 1; i <= element; i++) {
    stdout.write("Element[$i]: ");
    num = int.parse(stdin.readLineSync()!);
    Array.add(num);
  }
}

void printArray(List Array, int element) {
  for (var i = 0; i < element; i++) {
    stdout.write(" ${Array[i]}");
  }
  print("");
}

int TimeRepeated(int length, List Array, int element) {
  int count = 0;
  for (var i = 0; i < element; i++) {
    if (Array[i] == length) {
      count++;
    }
  }
  return count;
}

void main() {
  List Array = [];
  int element = input("Enter a Positive Number: ");
  ReadArray(Array, element);
  stdout.write("Original array:");
  printArray(Array, element);
  print("Enter the number you want to check ");
  int length = int.parse(stdin.readLineSync()!);
  int timerepeated = TimeRepeated(length, Array, element);
  print("\nNumber $length is repeated $timerepeated time(s)");
}
