import 'dart:math';

int RandomNumber() {
  Random random = Random();
  int numberEnt = random.nextInt(10) ;
  return numberEnt;
}

void main() {
  for (var i = 0; i < 10; i++) {
    print(RandomNumber());
  }
}
