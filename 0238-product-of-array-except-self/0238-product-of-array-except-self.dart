class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> res = List.filled(nums.length, 0);
    List<int> postfix = List.filled(nums.length, 0);
    List<int> prefix = List.filled(nums.length, 0);

    for (var i = 0; i < nums.length; i++) {
      if (i == 0) {
        prefix[i] = nums[i];
        continue;
      }
      prefix[i] = prefix[i - 1] * nums[i];
    }

    for (var i = nums.length - 1; i >= 0; i--) {
      if (i == nums.length - 1) {
        postfix[i] = nums[i];
        continue;
      }
      postfix[i] = postfix[i + 1] * nums[i];
    }

    for (var i = 0; i < nums.length; i++) {
      if (i == 0) {
        res[i] = postfix[i + 1];
        continue;
      }

      if (i == nums.length - 1) {
        res[i] = prefix[i - 1];
        continue;
      }

      res[i] = prefix[i - 1] * postfix[i + 1];
    }

    return res;
  }
}
