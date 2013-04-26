#include <iostream>
using namespace std;

int main() {
  const int line = 100;
  const int max_num = line*(line + 1) / 2;
  int mat[max_num];
  int n = 0;
  for (auto i = 0; i < max_num; i++) {
    cin >> n;
    mat[i] = n;
  }
  int ret[max_num];
  for (auto i = 0; i < max_num; i++) { ret[i] = 0; } // initialize ret
  ret[0] = mat[0];
  int i = 0, row = 1, col = 1;
  for (; i < max_num - line; i++) {
    for (auto k = 0; k < 2; k++) {
      int sum = ret[i] + mat[i + row + k];
      if (ret[i + row + k] < sum) {
        ret[i + row + k] = sum;
      }
    }
    col++;
    if (row < col) {
      row++;
      col = 1;
    }
  }
  int ans = 0;
  for (; i < line*(line + 1) / 2; i++) {
    if (ret[i] > ans) {
      ans = ret[i];
    }
  }
  cout << "ans= " << ans << endl;
}
