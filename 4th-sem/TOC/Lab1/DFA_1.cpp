//End with 11
#include <iostream>
#include <string>
using namespace std;

int main() {
  char q = 'a';
  string alph, path = "q0";
  int i;
  cout << "Enter the string to be checked:";
  cin >> alph;
  for (i = 0; alph[i] != '\0'; i++) {
    if (alph[i] != '0' && alph[i] != '1') {
      cout << "Invalid Input!" << endl;
      break;
    }
    switch (q) {
    case 'a':
      if (alph[i] == '0') {
        path += "->q0";
        q = 'a';
      } else if (alph[i] == '1') {
        path += "->q1";
        q = 'b';
      }
      break;
    case 'b':
      if (alph[i] == '0') {
        path += "->q0";
        q = 'a';
      } else if (alph[i] == '1') {
        path += "->q2";
        q = 'c';
      }
      break;
    case 'c':
      if (alph[i] == '0') {
        path += "->q0";
        q = 'a';
      } else if (alph[i] == '1') {
        path += "->q1";
        q = 'b';
      }
      break;
    }
  }
  if (q == 'c')
    cout << "Transition Path:" << path << endl << "String is accepted.";
  else cout << "String is not accepted.";
  return 0;
}
