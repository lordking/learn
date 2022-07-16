#include <iostream>

int main()
{
    int val = 2;
    int &refVal = val;
    int *ptrVal = &val; //指针存储的是地址
    int assignVal = val;

    std::cout << "val = " << val
              << " assignVal = " << assignVal
              << " ptrVal = " << *ptrVal
              << " refVal = " << refVal << std::endl;

    // 当变量的值发生变化后，指向它的指针以及影响它的引用都会发生变化
    val = 3;
    std::cout << "val = " << val
              << " assignVal = " << assignVal
              << " ptrVal = " << *ptrVal
              << " refVal = " << refVal << std::endl;

    // 使用*p重新赋值实际上是对它指向的变量进行赋值， 所以当指针指向变量的值发生变化时，引用也会发生变化
    *ptrVal = 4;
    std::cout << "val = " << val
              << " assignVal = " << assignVal
              << " ptrVal = " << *ptrVal
              << " refVal = " << refVal << std::endl;

    return 0;
}