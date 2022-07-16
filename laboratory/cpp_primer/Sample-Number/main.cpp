#include <iostream>
#include <cmath>

/**
 * 数字运算样例
 */

using namespace std;

int main()
{
    int num1 = 0; int num2 = 0;

    cout << "Enter first integer number: ";
    cin >> num1;

    cout << "Enter second other integer number: ";
    cin >> num2;

    cout << endl;

    /**< 基本的四则运算 */
    cout << num1 << " + " << num2 << " = " << num1 + num2 << endl;
    cout << num1 << " - " << num2 << " = " << num1 - num2 << endl;
    cout << num1 << " * " << num2 << " = " << num1 * num2 << endl;
    cout << num1 << " / " << num2 << " = " << (double)num1 / (double)num2 << endl;
    cout << num1 << " mod " << num2 << " = " << num1 % num2 << endl;
    cout << num1 << "--  = " << num1-- << endl;
    cout << num1 << "++  = " << num1++ << endl;
    cout << "--" <<  num1 << " = " << --num1 << endl;
    cout << "++" <<  num1 << " = " << ++num1 << endl;

    /**< 高级的数学函数，使用cmath */
    cout << num1 << "^" << num2 << " = " << pow(num1, num2) << endl;
    cout << "The maximum number in (" << num1 << ',' << num2  << ") is " << fmax(num1, num2) << endl;
    cout << "The minimum number in (" << num1 << ',' << num2  << ") is " << fmin(num1, num2) << endl;

    return 0;
}
