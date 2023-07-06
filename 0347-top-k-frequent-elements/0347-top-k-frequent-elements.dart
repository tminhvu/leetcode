class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> counting = Map<int, int>();

    for (int i in nums) {
      if (counting[i] == null) {
        counting[i] = 1;
      } else {
        counting[i] = counting[i]! + 1;
      }
    }

    Map<int, int> sorted = Map.fromEntries(
      counting.entries.toList()
        ..sort(
          (a, b) => b.value - a.value,
        ),
    );

    List<int> result = [];
    for (var i = 0; i < k; i++) {
      result.add(sorted.keys.toList()[i]);
    }

    return result;
  }
}
