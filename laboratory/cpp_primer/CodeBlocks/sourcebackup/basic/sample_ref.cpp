#include <iostream>

/**
 * g++ -o sample sample_ref.cpp
 * @return int
 */
int main()
{
    int val = 2;
    int &refVal = val; // 引用必须初始化
    int assignVal = val;

    std::cout << "val = " << val
              << " assignVal = " << assignVal
              << " refVal = " << refVal << std::endl;

    val = 3;
    std::cout << "val = " << val
              << " assignVal = " << assignVal
              << " refVal = " << refVal << std::endl;

    return 0;
}