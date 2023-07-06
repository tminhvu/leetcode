import 'dart:collection';

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.length == 0) return [];

    HashMap<String, List<String>> map = HashMap<String, List<String>>();

    List<String> keyList;
    String key;
    for (var s in strs) {
      keyList = s.split('');
      keyList.sort(
        (a, b) => a.compareTo(b),
      );

      key = keyList.join('');
      if (!map.containsKey(key)) {
        map[key] = [];
      }

      map[key]!.add(s);
    }

    return map.values.toList();
  }
}
