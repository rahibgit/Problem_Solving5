#include <iostream>
using namespace std;
string Password()
{
    string pass;
    cout << "Enter passowrd: ";
    cin >> pass;
    return pass;
}
//تخمين الباسورد
bool PrintWordsFromAAAtoZZZ(string pass)
{
    string word = " ";
    int letter = 90;
    int count = 0;
    for (int i = 65; i <= letter; i++)
    {
        for (int j = 65; j <= letter; j++)
        {
            for (int k = 65; k <= letter; k++)
            {
                word = word + char(i);
                word = word + char(j);
                word = word + char(k);
                cout << " Trial[" << ++count << " ]: " << word << endl;
                if (word == pass)
                {
                    cout << "Password is " << word << endl;
                    cout << "found after " << count << " Trial(s)" << endl;
                   return true;
                }
                word = "";
            }
        }
    }
    return false;
}
int main()
{
   
    if(PrintWordsFromAAAtoZZZ(Password())==false){
        cout<<"not found pass";

    }
}