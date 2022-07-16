#include <iostream>
/**
 * 在控制台输入输出的样例
 */

using namespace std;

int main()
{


    /**< 接受输入字符串 */
    string name;
    cout << "Enter your name: ";
    getline(cin, name);
    cout << "Hello " << name << "! ";


    /** 接受输入数字  */
    int num_1, num_2;
    cout << "Please input two numbers:";
    cin >> num_1 >> num_2;                                 /**< cin 接受控制台的输入； >> 函数把输出值到指定变量  */
    cout << "The sum of " << num_1 << " and " << num_2
         << " is " << num_1 + num_2 << endl;

    cout << "\n";

    /** 打印输出 */
    cout << "    /|" << endl;
    cout << "   / |" << endl;
    cout << "  /  |" << endl;
    cout << " /___|" << endl;

    cout << "\n";


    /** 不换行  */
    cout << "There won't " ;                                /**< 结束之后再次打印内容时，将在新的一行 */
    cout << "be newline" << endl;

    return 0;
}
