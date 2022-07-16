#include <iostream>

using namespace std;

int main()
{
  // cout 打印内容到控制台; << 接受输入值到函数; endl 文件结束符
  cout << "Enter two numbers:" << endl;
  int v1 = 0, v2 = 0;

  // cin 接受控制台的输入；>> 函数把输出值到指定变量
  cin >> v1 >> v2;
  cout << "The sum of " << v1 << " and " << v2
            << " is " << v1 + v2 << endl;

  return 0;
}