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
  while (num > 0) {
    int temp = num % 10;
    num = num ~/ 10;
    print(temp);
  }
}

void main() {
  PrintResult(input("Enter ppositvie Number: "));
}
