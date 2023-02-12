//Doesn't end with ab
#include <iostream>
#include <string>
using namespace std;

int main() {
  char q = 'A';
  string alph, path = "q0";
  int i;
  cout << "Enter the string to be checked:";
  cin >> alph;
  for (i = 0; alph[i] != '\0'; i++) {
    if (alph[i] != 'a' && alph[i] != 'b') {
      cout << "Invalid Input!" << endl;
      break;
    }
    switch (q) {
    case 'A':
      if (alph[i] == 'a') {
        path += "->q1";
        q = 'B';
      } else if (alph[i] == 'b') {
        path += "->q0";
        q = 'A';
      }
      break;
    case 'B':
      if (alph[i] == 'a') {
        path += "->q1";
        q = 'B';
      } else if (alph[i] == 'b') {
        path += "->q2";
        q = 'C';
      }
      break;
    case 'C':
      if (alph[i] == 'a') {
        path += "->q1";
        q = 'B';
      } else if (alph[i] == 'b') {
        path += "->q0";
        q = 'A';
      }
      break;
    }
  }
  if (q == 'A' || q == 'B')
    cout << "Transition Path:" << path << endl << "String is accepted.";
  else cout << "String is not accepted.";
  return 0;
}
