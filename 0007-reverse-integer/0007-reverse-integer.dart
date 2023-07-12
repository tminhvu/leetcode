class Solution {
  int reverse(int x) {
    int r = int.parse(x.abs().toString().split('').reversed.join(''));

    if (r.abs() > 2147483647) return 0;

    return r * (x < 0 ? -1 : 1);
  }
}
