import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

int CountDigitFrequency(int num, int digitcheck) {
  int Remainder = 0;
  int countFreq = 0;
  while (num > 0) {
    Remainder = num % 10;
    num = num ~/ 10;

    if (digitcheck == Remainder) {
      countFreq++;
    }
  }
  return countFreq;
}

void PrintAllDigitsFrequency(int Number) {
  for (int i = 0; i < 10; i++) {
    int DigitFrequency = CountDigitFrequency(Number, i);
    if (DigitFrequency > 0) {
      print("Digit $i  Frequency is  $DigitFrequency Time(s). ");
    }
  }
}

void main() {
  int num = input("Enter a positive integer:");
  PrintAllDigitsFrequency(num);
}
