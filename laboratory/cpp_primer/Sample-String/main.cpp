#include <iostream>
/**
 * 字符串的例子
 */

using namespace std;

int main()
{
    /**< 字符串是由字符构成，字符的索引从0开始 */
    string phrase = "Lord of the rings";
    int phrase_length = phrase.length();

    for (int i = 0; i < phrase_length; i++) {

            cout << phrase[i] << " ";

    }
    cout << endl;


    /**< 字符串查找, 从哪个索引位置查找 */
    cout << phrase.find("f", 4) << endl;


    /**< 字符串提取 */
    cout << phrase.substr(8, 3) << endl;

    return 0;
}
