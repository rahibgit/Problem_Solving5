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

void FillArrayWithRandomNumbers(List Array, int length) {
  for (var i = 0; i < length; i++) {
    int Arr = RandomNumber();

    Array.add(Arr);
  }
}

void SumOf2Arrays(List arr1, List arr2, List sumarr, int length) {
  int sum = 0;
  for (var i = 0; i < length; i++) {
    sum = arr1[i] + arr2[i];
    sumarr.add(sum);
  }
}

void printArray(List Array, int length) {
  for (var i = 0; i < length; i++) {
    stdout.write("${Array[i]} ");
  }
}

void main() {
  int length = input("Enter number of element: ");
  List arr1 = [], arr2 = [], sumarr = [];
  FillArrayWithRandomNumbers(arr1, length);

  FillArrayWithRandomNumbers(arr2, length);

  SumOf2Arrays(arr1, arr2, sumarr, length);
  stdout.write("\nArray1 Elements: ");
  printArray(arr1, length);
  stdout.write("\nArray2 Elements: ");
  printArray(arr2, length);
  stdout.write("\nSum of array 1 and array 2  elements: ");
  printArray(sumarr, length);
}
