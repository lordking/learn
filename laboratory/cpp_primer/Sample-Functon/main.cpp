#include <iostream>

using namespace std;

// C++会检查函数顺序。如果要把函数放在main前面，必须先生命函数。
void sayHi(string name, int age);

double cube(double num)
{
    return num * num * num;
}

int main()
{
    sayHi("Mike", 50);
    sayHi("Tom", 33);
    sayHi("John", 12);

    double num = 5.0;
    double answer = cube(num);
    cout << "Result of " << num << "^3 is " << answer << endl;

    return 0;
}


void sayHi(string name, int age)
{

    cout << "Hi " << name << "! You are " << age << " at age." << endl;
}
