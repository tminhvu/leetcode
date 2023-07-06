/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    if (l1 == null) return l2;
    if (l2 == null) return l1;

    ListNode? c1 = l1;
    ListNode? c2 = l2;

    int remainder = 0;
    int sum = c1.val + c2.val + remainder;

    remainder = sum ~/ 10;

    ListNode? sumList = ListNode(sum % 10, null);
    ListNode result = sumList;

    c1 = c1.next;
    c2 = c2.next;

    while (c1 != null && c2 != null) {
      sum = c1.val + c2.val + remainder;

      remainder = sum ~/ 10;

      sumList?.next = ListNode((sum % 10), null);
      sumList = sumList?.next;

      c1 = c1.next;
      c2 = c2.next;
    }

    while (c1 != null) {
      sum = c1.val + remainder;
      remainder = sum ~/ 10;
      sumList?.next = ListNode(sum % 10, null);
      sumList = sumList?.next;
      c1 = c1.next;
    }

    while (c2 != null) {
      sum = c2.val + remainder;
      remainder = sum ~/ 10;
      sumList?.next = ListNode(sum % 10, null);
      sumList = sumList?.next;
      c2 = c2.next;
    }

    if (remainder > 0) {
      sumList?.next = ListNode(remainder, null);
    }

    return result;
  }
}
