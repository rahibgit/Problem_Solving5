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
  if (isperfect(num)) {
    print("The $num is perfect");
  } else {
    print("the $num not perfect");
  }
}

void main() {
  
  
  PrintResult(input("Please Enter Positive Number: "));
  
}
