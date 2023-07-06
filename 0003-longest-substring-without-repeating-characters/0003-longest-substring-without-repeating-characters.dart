class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> map = {};
    int result = 0;
    int max = 0;

    for (var i = 0; i < s.length; i++) {
      if (map[s[i]] == null) {
        map[s[i]] = i;
        result++;
      } else {
        if (result >= max) {
          max = result;
        }
        result = 0;
        i = map[s[i]]!;
        map = {};
      }
    }

    if (result >= max) {
      max = result;
    }

    return max;
  }
}
