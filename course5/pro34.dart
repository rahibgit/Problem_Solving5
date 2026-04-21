import 'dart:io';
import 'dart:math';


int input(String Message) {
  int num = 0;

  do {
    print(Message);

    num = int.parse(stdin.readLineSync()!);
  } while (num <= 0);

  return num;
}

int RandomNumber(int from, int to) {
  Random random = Random();
  int num = from + random.nextInt(to - from + 1);
  return num;
}

void FillArrayWithRandomNumbers(int length, List list1) {
  int temp = 0;
  for (int i = 0; i < length; i++) {
    temp = RandomNumber(1, 100);
    list1.add(temp);
  }
}

int LookingAt(int looking, List list, int length) {
  for (var i = 0; i < length; i++) {
    if (looking == list[i]) {
      return i;
    }
  }
  return -1;
}

void printlist(List list, int length) {
  for (var i = 0; i < length; i++) {
    stdout.write(" ${list[i]} ");
  }
}

void main() {
  List list = [];
  int length = input("Enter number of elements");
  FillArrayWithRandomNumbers(length, list);
  printlist(list, length);
  print("\nPlease enter a number to search for?");
  int looking = int.parse(stdin.readLineSync()!);
  int position = LookingAt(looking, list, length);
  print("Number you are looking for is:$looking ");
  if (position!=-1) {
    
  print("The number found at position:$position ");
  print("The number found its order :${position+1} ");
  }
  else
  {
      print("The number $looking is not found  ");
  }

}
