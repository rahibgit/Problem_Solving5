import 'dart:ffi';
import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}
//65 A to 90 Z
void PrintInvertedLetterPattern(int num) {
  for (var i = 1; i <= num; i++) {
    for (var j = 65; j <= i; j++) {
      stdout.write(Char);
    }
    print("");
  }
}

void main() {
  PrintInvertedLetterPattern(input("Enter a positive integer:"));
}
