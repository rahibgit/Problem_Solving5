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
void FillArrayWith1ToNum(int arr[], int length)
{
    for (int i = 1; i <= length; i++)
    {
        arr[i] = i + 3;
    }
}
void printArray(int Array[], int length)
{
    for (int i = 1; i <= length; i++)
    {
        cout << Array[i] << " ";
    }
}
void Swap(int &A, int &B)
{
    int Temp;

    Temp = A;
    A = B;
    B = Temp;
}

int RandomNumber(int from, int to)
{
    int randNum = rand() % (to - from + 1) + from;
    return randNum;
}
void shuffle(int arr[], int length)
{
    for (int i = 1; i <= length; i++)
    {
        Swap(arr[RandomNumber(1, length)], arr[RandomNumber(1, length)]);
    }
}
int main()
{
    srand((unsigned)time(NULL));
    int arr[100];
    int length = input("Enter number of element: ");
    FillArrayWith1ToNum(arr, length);
    cout << "\nArray elements before shuffle:: ";
    printArray(arr, length);
    shuffle(arr, length);
    cout << "\nArray elements after  shuffle:: ";
    printArray(arr, length);
}