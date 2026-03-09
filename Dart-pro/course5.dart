import 'dart:io';

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

void printResult(int num) {
  for (int i = 1; i <= num; i++) {
    if (isprime(i) == checkprime.prime) {
      print(i);
    }
  }
}

void main() {
  printResult(input("Enter Positive Number: "));
}
