#include <iostream>
/**
 * ����
 */

using namespace std;

int main()
{
    int luckyNums[] = {4, 8, 15, 16, 23, 42};

    int inputNum;
    bool found;
    int beginNum = 0, endNum = 100;
    bool moreThanSuggestedNum;
    while(!found)
    {
        // ��������
        cout << "Please enter a integer number between 0 and 100:";
        cin >> inputNum;

        // �������
        if (inputNum < 0)
        {
            cout << "Your number can't be less than 0!" << endl;
            continue;
        }
        else if (inputNum > 100)
        {
            cout << "Your number can't be more than 100" << endl;
            continue;
        }


        // �Ƚ�����
        int luckyNums_length = sizeof(luckyNums) / sizeof(luckyNums[0]);
        for (int i = 0; i < luckyNums_length; i++)
        {
            if (inputNum == luckyNums[i])
            {
                cout << "Congratulation! The lucky number is " << inputNum << endl;
                found = true;
                break;
            } else (inputNum > luckyNums[i]) {

            } else {

                // �ҳ����������
                if (endNum == 100) {
                    endNum = luckyNums[i];
                }

            }

        }

        // û���ҵ�����ʾ���������
        if (!found)
        {
            cout << "Sorry! Your number is wrong! " << endl;
            cout << "Your number is between " << beginNum << " and " << endNum << endl;
            cout << "Retry again!" << endl;
        }

    }

    return 0;
}
