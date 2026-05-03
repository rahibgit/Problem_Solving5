import 'dart:io';
import 'dart:math';
import 'pro23.dart';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);

  return num;
}

int RandomNumber(int from, int to) {
  Random random = Random();
  int num = from + random.nextInt(to - from + 1);
  return num;
}

void FillArrayWithRandomNumbers(int length, List list1) {
  int temp = 0;
  for (int i = 0; i < length; i++) {
    temp = RandomNumber(1, 100);
    list1.add(temp);
  }
}

void printlist(List list, int length) {
  for (var i = 0; i < length; i++) {
    stdout.write(" ${list[i]} ");
  }
}

void CopyArrayInReverseOrder(List list1, List list2, int length) {
  int temp = 0;
  for (int i = 0; i < length; i++) {
    temp = list1[length - 1 - i];
    list2.add(temp);
  }
}

void main() {
  List list1 = [], list2 = [];

  int length = input("Enter number of elements: ");
  FillArrayWithRandomNumbers(length, list1);
  stdout.write("Array 1 Elements: ");
  printArray(list1, length);

  CopyArrayInReverseOrder(list1, list2, length);
  stdout.write("\nArray after reverse: ");
  printArray(list2, length);
}
