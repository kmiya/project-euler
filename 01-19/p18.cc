#include <iostream>
#include <vector>
using namespace std;

const int gLine = 15;

int main() {
  const int max_num = gLine*(gLine + 1) / 2;
  vector<int> mat;
  int n = 0;
  for (auto i = 0; i < max_num; i++) {
    cin >> n;
    mat.push_back( n );
  }
  int ret[max_num];
  for (auto i = 0; i < max_num; i++) { ret[i] = 0; } // initialize ret
  ret[0] = mat[0];
  int i = 0, row = 1, col = 1;
  for (; i < max_num - gLine; i++) {
    for (auto k = 0; k < 2; k++) {
      int sum = ret[i] + mat[i + row + k];
      if (ret[i + row + k] < sum) {
        ret[i + row + k] = sum;
      }
    }
    if (row == col) {
      row++;
      col = 1;
    } else {
      col++;
    }
  }
  int ans = 0;
  for (; i < gLine*(gLine + 1) / 2; i++) {
    if (ret[i] > ans) {
      ans = ret[i];
    }
  }
  cout << "ans= " << ans << endl;
}
