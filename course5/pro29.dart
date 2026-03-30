import 'dart:io';
import 'dart:math';

enum checkprime { prime, notprime }

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

checkprime isprime(int num) {
  int M = (num ~/ 2);
  for (int i = 2; i <= M; i++) {
    if (num % i == 0) {
      return checkprime.notprime;
    }
  }
  return checkprime.prime;
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

void printArray(List Array, int length) {
  for (var i = 0; i < length; i++) {
    stdout.write("${Array[i]} ");
  }
}

void CopyOnlyPrimeNumbers(List arr, List arrcopy, int length) {
  int index = 0;
  for (var i = 0; i < length; i++) {
    if (isprime(arr[i]) == checkprime.prime) {
      index = arr[i];
      arrcopy.add(index);
    }
  }
}

void main() {
  int length = input("Enter Positive Number: ");
  List Array = [];
  List arrcopy = [];
  FillArrayWithRandomNumbers(Array, length);
  stdout.write("Array 1 Element: ");
  printArray(Array, length);
  CopyOnlyPrimeNumbers(Array, arrcopy, length);
  stdout.write("\nPrime Number in Array2: ");
  printArray(arrcopy, arrcopy.length);
}
