#include <cstdlib>
#include <iostream>
using namespace std;
int ReadPositiveNumber(string Message)
{
    int num = 0;

    do
    {
        cout << Message << endl;

        cin >> num;
    } while (num <= 0);
    return num;
}

int RandomNumber(int from, int to)

{

    int randNum = rand() % (to - from + 1) + from;

    return randNum;
}

enum enCharType
{
    letterApper,
    letterLwoer,
    Number,
    Symbol
};

char GetRandomCharater(enCharType chartype)
{

    switch (chartype)
    {
    case enCharType::letterLwoer:

        return char(RandomNumber(97, 122));
        break;
    case enCharType::letterApper:
        return char(RandomNumber(65, 90));
        break;

    case enCharType::Number:
        return char(RandomNumber(48, 57));
        break;

    case enCharType::Symbol:
        return char(RandomNumber(33, 47));
        break;

    default:
        cout << "invalid";
        break;
    }
}
string GenerateWord()
{
    string word = "";
    for (int i = 0; i < 4; i++)
    {
        word += GetRandomCharater(enCharType::letterApper);
    }
    return word;
}

string GenerateKey()
{
    string words = "";

    words = GenerateWord() + "-";
    words += GenerateWord() + "-";
    words += GenerateWord() + "-";
    words += GenerateWord();

    return words;
}

void GenerateKeys(int key,string arr[])
{
    for (int i = 1; i <= key; i++)
    {
        arr[i]=GenerateKey();
    }
     for (int i = 1; i <= key; i++)
    {
        cout<<"arr["<<i<<"]: "<<arr[i]<<endl;
    }
}
int main()
{ string arr[100];
    int Key = ReadPositiveNumber("Enter Positive Number: ");
    GenerateKeys(Key,arr);
}
