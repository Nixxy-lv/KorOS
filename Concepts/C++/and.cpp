#include <iostream>
using namespace std;

int main() {
  string ans, ans2;
  bool isTrue, isTrue2;

  cout<<"Will A be true? [y/n]"<<endl;
  cin>>ans;
  cout<<"Will B be true? [y/n]"<<endl;
  cin>>ans2;

  if (ans =="y") {
    isTrue =true;
  } else {
    isTrue =false;
  }
  
  if (ans2 =="y") {
    isTrue2 =true;
  } else {
    isTrue2 =false;
  }
  
  if (isTrue && isTrue2) {
    cout<<"AND Gate: true"<<endl;
  } else {
    cout<<"AND Gate: false"<<endl;
  }
}
