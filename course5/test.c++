#include <iostream>
#include <cstdlib>
using namespace std;

int input(string Message)
{
    int num = 0;

    do
    {
        cout << Message;

        cin >> num;
    } while (num <= 0);
    return num;
}

int RandomNumber(int from, int to)
{
    int randNum = rand() % (to - from + 1) + from;
    return randNum;
}

int main()
{
    srand((unsigned)time(NULL));

    int arr[]={1,2,3,4,5};
   int a=0;
   int b=4;
    for (int i = 0; i < 5; i++)
    {
        cout<<arr[i]<<" ";
    }
    
    
}