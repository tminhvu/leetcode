class Solution {
  String longestPalindrome(String s) {
    String reversed = s.split('').reversed.join();

    if (reversed.compareTo(s) == 0) return s;

    String sub = '';
    String sub2 = '';

    for (var i = 0; i < s.length; i++) {
      int left = i;
      int right = i;

      sub = expand(left: left, right: right, s: s, sub: sub);

      left = i;
      right = i + 1;
      sub2 = expand(left: left, right: right, s: s, sub: sub2);
    }

    return sub.length > sub2.length ? sub : sub2;
  }

  String expand({
    required int left,
    required int right,
    required String s,
    required String sub,
  }) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      if (right - left + 1 > sub.length) {
        sub = s.substring(left, right + 1);
      }
      left -= 1;
      right += 1;
    }
    return sub;
  }
}
