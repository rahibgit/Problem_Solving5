import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

void PrintResult(int num) {
  int temp = 0;
  int sum = 0;
  while (num > 0) {
    temp = num % 10;
    num = num ~/ 10;
    sum += temp;
  }
    print('sum of digit $sum');
}

void main() {
  PrintResult(input("Enter ppositvie Number: "));
}
