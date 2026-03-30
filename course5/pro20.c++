// leatter apper from 65 to 90
// letter lwoer from 97 to 122
// number from 48 to 57

#include <cstdlib>
#include <iostream>
using namespace std;
enum enCharType
{
    letterApper,
    letterLwoer,
    Number,
    Symbol
};
int RandomNumber(int from, int to)
{
    int randNum = rand() % (to - from + 1) + from;
    return randNum;
}

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

int main()
{
    srand((unsigned)time(NULL));
    cout << GetRandomCharater(enCharType::letterLwoer) << endl;
    cout << GetRandomCharater(enCharType::letterApper) << endl;
    cout << GetRandomCharater(enCharType::Symbol) << endl;
    cout << GetRandomCharater(enCharType::Number) << endl;
    return 0;
}
