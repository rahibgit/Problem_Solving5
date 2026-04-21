#include <iostream>
using namespace std;
int ReadNumber(string message)
{
    int Number;
    cout << message << endl;
    cin >> Number;
    return Number;
}

void AddElement(int number, int arry[], int &length)
{

    arry[length] = number;
    length++;
}

void inputUserElement(int arry[], int &length)
{
    int check = 1;
    int number = 0;
    do

    {
        number = ReadNumber("Please enter a number?");
        AddElement(number, arry, length);
        cout << "\nDo you want to add more numbers? [0]:No,[1]:yes? ";
        int YorN;
        cin >> YorN;
        if (YorN == 1)
        {
            check = 1;
        }
        else if (YorN == 0)
        {
            check = 0;
        }
        else
        {
            cout << "input error" << endl;
        }

    } while (check);
}

void printArray(int length, int arry[])
{
    cout << "\nArray length :" << length << endl;
    cout << "\nArray Elements: ";
    for (int i = 0; i < length; i++)
    {
        cout << " " << arry[i];
    }
}
int main()
{
    int arr[100];
    int length = 0;
    inputUserElement(arr, length);
    printArray(length, arr);
}