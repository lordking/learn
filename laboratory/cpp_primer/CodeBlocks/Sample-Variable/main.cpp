#include <iostream>
/**
 * 变量的例子
 */

using namespace std;

int main()
{

    string characterName = "Tom";
    int characterAge;
    characterAge = 50;

    cout << "There once was a man named " << characterName << endl;
    cout << "He was " << characterAge << " years old" << endl;

    characterName = "Mike";
    cout << "He liked the name " << characterName << endl;
    cout << "But did not linke being " << characterAge << endl;

    return 0;
}
