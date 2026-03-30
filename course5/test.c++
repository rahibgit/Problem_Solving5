#include <iostream>
using namespace std;
string a()
{
    string w = "";
    for (int i = 0; i < 3; i++)
    {
        w += "e";
    }
    return w;
}

string f()
{
    string c = "";
    for (int i = 0; i <= 3; i++)
    {
        /* code */
        c += a() + "-";
    }

    return c;
}
void print(string c)
{
    cout << "Key: " << c;
}
int main()
{

    print(f());
}