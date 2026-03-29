import 'dart:io';
import 'dart:math';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);

  return num;
}

int RandomNumber() {
  Random random = Random();

  int numberEnt = random.nextInt(100);

  return numberEnt;
}

void FillArrayWithRandomNumbers(List<int> Array, int length) {
  for (var i = 0; i < length; i++) {
    int Arr = RandomNumber();
    Array.add(Arr);
  }
}

void printArray(List Array, int length) {
  for (var i = 0; i < length; i++) {
    stdout.write(" ${Array[i]} ");
  }
}

void main() {
  List<int> Array = [];
  int length = input("Enter length array");
  FillArrayWithRandomNumbers(Array, length);
  stdout.write("Original array:");
  printArray(Array, length);
}
