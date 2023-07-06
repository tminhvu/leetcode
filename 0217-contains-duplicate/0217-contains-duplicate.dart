class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int, bool> contains = {};

    for (var n in nums) {
      if (contains[n] != null) {
        return true;
      }

      contains[n] = false;
    }

    return false;
  }
}
