class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<String> sList = s.split('');
    List<String> tList = t.split('');

    sList.sort(
      (a, b) => a.compareTo(b),
    );
    tList.sort(
      (a, b) => a.compareTo(b),
    );

    return sList.join('').compareTo(tList.join('')) == 0;
  }
}
