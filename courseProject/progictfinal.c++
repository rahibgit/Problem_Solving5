
#include <iostream>
#include <cstdlib>
using namespace std;

// generate a random number between from and to
int RandomNumber(int from, int to)
{
    int randNum = rand() % (to - from + 1) + from;
    return randNum;
}
// read a positive number from the user
int ReadPositiveNumber(string Message)
{
    int num = 0;

    do
    {
        cout << Message;

        cin >> num;
    } while (num <= 0);
    return num;
}
// return the name of the card
string card(int player)
{
    if (player == 1)
    {
        return "paper";
    }
    else if (player == 2)
    {
        return "stone";
    }
    else
    {
        return "scissor";
    }
}

void print(string message)
{
    cout << message;
}
// determine the winner of each round
string result(int player, int computer, int &playCount, int &computerCount, int &drawtimes)
{
    if (player == computer)
    {
        drawtimes++;
        system("color 6E");
        return "draw";
    }
    else if (player == 1 && computer == 2 || player == 2 && computer == 3 || player == 3 && computer == 1)
    {
        playCount++;
        system("color 2E");
        
        return "you win";
    }
    else if (computer == 1 && player == 2 || computer == 2 && player == 3 || computer == 3 && player == 1)
    {
        computerCount++;
        system("color 4E");
        return "pc win";
    }
}

// print the result of each round
void printResults(int computer, int player, int count, int &playCount, int &computerCount, int &drawtimes)
{
    print("\n\n---------------round[");
    cout << count << "]---------------------" << endl;

    print("you choice: ");
    cout << card(player) << endl;

    print("computer choice: ");
    cout << card(computer) << endl;
    print("round winner: ");
    cout << result(player, computer, playCount, computerCount, drawtimes);

    print("\n--------------------------------------------\n\n");
}

// play the game
void Game(int computer, int player, int count, int &playCount, int &computerCount, int &drawtimes)
{
    for (int i = 1; i <= count; i++)

    {
        player = ReadPositiveNumber("choice 1[stont] 2[paper] 3[scissor]: ");
        computer = RandomNumber(1, 3);
        printResults(computer, player, i, playCount, computerCount, drawtimes);
    }
}

void endResult(int count, int playCount, int computerCount, int drawtimes)
{
    string finalWinner = "";
    if (playCount > computerCount)
    {
        system("color 2E");
        finalWinner = "You are winner";
    }
    else if (playCount < computerCount)
    {
        system("color 4E");
        finalWinner = "computer is Winner";
    }
    else
    {
        system("color 6E");
        finalWinner = "No Winner";
    }

    print("               +++               Game Over               +++\n");
    print("               ---------------------------------------------\n");
    print("               ----------------\Game Results----------------\n");
    cout << "             Game Rounds           :" << count << endl;
    cout << "             Player1 won times     :" << playCount << endl;
    cout << "             Computer won times    :" << computerCount << endl;
    cout << "             Draw times            :" << drawtimes << endl;
    cout << "             finalWinner            :" << finalWinner << endl;

    print("               ----------------------------------------------\n");
}

int main()

{
    srand((unsigned)time(NULL));

    string YorN = "";
    do
    {
        int drawtimes     = 0;
        int playCount     = 0;
        int computerCount = 0;

        int computer;
        int player;
        int count;

        system("cls");
        count = ReadPositiveNumber("How many round the game will be?: ");
        Game(computer, player, count, playCount, computerCount, drawtimes);
        endResult(count, playCount, computerCount, drawtimes);
        print("\n\n\nDo You Want to Play again? Y/N?: ");
        cin >> YorN;
    } while (YorN == "Y" || YorN == "y");
}