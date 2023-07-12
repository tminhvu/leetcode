class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) return s;

    String res = '';
    int increment = 0;

    for (var r = 0; r < numRows; r++) {
      increment = 2 * (numRows - 1);

      for (var i = r; i < s.length; i += increment) {
        res += s[i];

        if (r > 0 && r < numRows - 1 && i + increment - 2 * r < s.length) {
          res += s[i + increment - 2 * r];
        }
      }
    }

    return res;
  }
}
