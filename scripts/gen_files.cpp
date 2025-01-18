/*
 * 2025 18th Jan
 */

#include <iostream>
#include <string>
#include <fstream>
using namespace std;

void rec(ifstream& ist, ofstream& out, int cnt) {
    if(!ist) return;

    string str;
    ist >> str;
    
    bool isdir = (str[str.size()-1] == '/') ? true : false;

    int i = 0;
    while(str[i] == '-') i++;
    
    if(!isdir) {
        string res = str.substr(i, str.size() - i);
        out << "touch " << res << "\n";
    } else {
        string res = str.substr(i, str.size() - i);

        if(i < cnt)
            for(int j=0;j<cnt-i;j++)
                out << "cd ../" << "\n";

        out << "mkdir " << res << "\n";
        out << "cd " << res << "\n";
    }
    rec(ist, out, i);
}

int main() {
    ifstream ist{"file_format"};
    ofstream ost{"out.sh"};

    ost << "#!/bin/bash \n";

    if(!ist) {
        cerr << "Missing file file_format\n";
        return 1;
    }

    int cnt = 0;
    rec(ist, ost, cnt);
}
