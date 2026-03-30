import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

bool isperfect(int num) {
  int sum = 0;
  for (int i = 1; i < num; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  return num == sum;
}

void PrintResult(int num) {
  for (int i = 2; i <= num; i++) {
    if (isperfect(i)) {
      print('The Perfect Number Is $i');
    }
  }
}

void main() {
  PrintResult(input("Enter Positive Number: "));
}
