#include <iostream>
/**
 * �ַ���������
 */

using namespace std;

int main()
{
    /**< �ַ��������ַ����ɣ��ַ���������0��ʼ */
    string phrase = "Lord of the rings";
    int phrase_length = phrase.length();

    for (int i = 0; i < phrase_length; i++) {

            cout << phrase[i] << " ";

    }
    cout << endl;


    /**< �ַ�������, ���ĸ�����λ�ò��� */
    cout << phrase.find("f", 4) << endl;


    /**< �ַ�����ȡ */
    cout << phrase.substr(8, 3) << endl;

    return 0;
}
