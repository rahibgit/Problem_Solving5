#include <iostream>
using namespace std;
int input(string Message) {
  int num = 0;


  do {
    cout<<Message;


    cin>>num;
  } while (num <= 0);
  return num;
}

void PrintInvertedLetterPattern(int num){
    for(int i=1;i<=num;i++){
        for(int j=1;j<=i;j++){
            cout<<char(64+i);
        }
        cout<<" ";
    }
}
int main() {
   
   PrintInvertedLetterPattern(input("Enter a Positive Number: "));
   
   
   
}   