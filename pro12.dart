import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

void PrintInvertedNumberPattern(int num) {
  for (var i = 1; i <= num; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }
}

void main() {
  PrintInvertedNumberPattern(input("Enter a positive integer:"));
}
