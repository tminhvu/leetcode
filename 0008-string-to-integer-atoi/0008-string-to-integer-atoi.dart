class Solution {
  int myAtoi(String s) {
    List<String> nums = [];
    bool? isNegative;

    for (var i = 0; i < s.length; i++) {
      if (s[i] == ' ' && nums.length == 0 && isNegative == null) {
        continue;
      }

      if (s[i] == '+' || s[i] == '-') {
        if (isNegative == null && nums.length == 0) {
          isNegative = s[i] == '-';
          continue;
        } else {
          break;
        }
      }

      if (int.tryParse(s[i]) != null) {
        nums.add((s[i]));
      } else {
        break;
      }
    }

    if (nums.length == 0) return 0;

    int? re = int.tryParse(nums.join());

    int upperBound = 2147483647;
    int lowerBound = -2147483648;

    if (re == null && isNegative == true) {
      return lowerBound;
    } else if (re == null && (isNegative == null || isNegative == false)) {
      return upperBound;
    }

    if (isNegative == null) isNegative = false;
    re = re! * (isNegative ? -1 : 1);

    if (re > upperBound) {
      re = upperBound;
    } else if (re < lowerBound) {
      re = lowerBound;
    }

    return re;
  }
}
