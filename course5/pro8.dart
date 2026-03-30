import 'dart:io';

int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

int CountDigitFrequency(int num,int digitToCheck) {
  int count = 0;
  while (num > 0) {
    int digit = num % 10;
    if (digit == digitToCheck) {
      count++;
    }
    num ~/= 10;
  }
  return count;
 

 
}

void main() {
int num = input("Enter a positive integer:");
int digitToCheck = input("Enter the digit to check (0-9):");
int frequency = CountDigitFrequency(num, digitToCheck);
print("The digit $digitToCheck appears $frequency times in the number $num.");


}
