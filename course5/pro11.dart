import 'dart:io';
// عكس ؟ لرقم يقرأ من اليمين الى اليسار وال نامج لقراءة رقم ومعرفة ما إذا كان ا ا
int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);
  return num;
}

int Reverce(int num) {
  int temp = 0;
  int rev = 0;
  while (num > 0) {
    temp = num % 10;
    num = num ~/ 10;
    rev = rev * 10 + temp;
  }
  return rev;
}

void printResult(int num, int numrev) {
 
  if (num==numrev) {
    print("Yes , it is  a Palindrome number");
  } else {
    print("No , it is Not a Palindrome number");
  }
}

void main() {
  int n = input("Enter a positive Number: ");
  printResult(n, Reverce(n));
}
