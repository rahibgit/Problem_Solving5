import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

void Reverce(int num) {
  int temp = 0;
  int rev = 0;
  while (num > 0) {
    temp = num % 10;
    num = num ~/ 10;
    rev = rev * 10 + temp;
  }
  print('Reverse of number is $rev');
}

void main() {
  int n = input('Enter a positive integer: ');
  Reverce(n);
}
