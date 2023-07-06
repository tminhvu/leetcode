class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    int sum;

    while (left < right) {
      for (var i = left + 1; i <= right; i++) {
        sum = nums[left] + nums[i];
        if (sum == target) {
          return [left, i];
        }
      }

      for (var i = right - 1; i > left; i--) {
        sum = nums[right] + nums[i];

        if (sum == target) {
          return [i, right];
        }
      }

      left++;
      right--;
    }

    return [];
  }
}
