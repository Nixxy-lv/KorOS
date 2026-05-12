#include <vector>
#include <string>
#include <iostream>

using namespace std;

int main() {
  vector<double> ints;
  vector<string> strs;

  while (true) {
    string input;

    cout<<">> ";
    cin>>input;

    if (input == "lgo") {
      cout<<"Exiting..."<<endl;
      break;
    }
  }

  return 0;
}
