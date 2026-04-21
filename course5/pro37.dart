import 'dart:io';
import 'dart:math';

import 'pro29.dart';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);

  return num;
}

int randomNumber() {
  Random random = Random();
  int nRandom = random.nextInt(100) + 1;
  return nRandom;
}

void addArr(List arr1, int length) {
  for (var i = 0; i < length; i++) {
    arr1.add(randomNumber());
  }
}

void copyArray(List arr1, List arr2, int length) {
  for (var i = 0; i < length; i++) {
    arr2.add(arr1[i]);
  }
}

void printlist(List arr, int length) {
  for (var i = 0; i < length; i++) {
    stdout.write(" ${arr[i]} ");
  }
}

void main() {

  int length = input("Enter number of elements");
  List arr1 = [], arr2 = [];
  addArr(arr1, length);
  copyArray(arr1, arr2, length);
  print("Array 1 Elements: ");
  printlist(arr1, length);
  print("\nArray 2 Elements: ");
  printlist(arr2, length);
}
