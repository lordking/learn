#include <iostream>

int main()
{
    int sum = 0, val = 1;

    while (val <= 10)
    {
        sum += val; //等价于 sum = sum + val
        ++val;      //等价于 val = val + 1
    }

    std::cout << "Sum of 1 to 10 inclusive is "
              << sum << std::endl;
    return 0;
}