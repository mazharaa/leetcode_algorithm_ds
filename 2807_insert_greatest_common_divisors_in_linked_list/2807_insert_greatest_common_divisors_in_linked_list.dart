void main(List<String> args) {}

class Solution {
  ListNode? insertGreatestCommonDivisors(ListNode? head) {
    if (head?.next == null) {
      return head;
    } else {
      ListNode? current = head;
      while (current != null && current.next != null) {
        ListNode? next = current.next;
        ListNode insert = ListNode();

        int nextVal = next?.val ?? 0;

        if (current.val < nextVal) {
          insert.val = gcd(nextVal, current.val);
          current.next = insert;
          insert.next = next;
        } else {
          insert.val = gcd(current.val, nextVal);
          current.next = insert;
          insert.next = next;
        }

        print(current.val);

        current = insert.next;
      }
      return head;
    }
  }

  int gcd(int a, int b) {
    if (a % b == 0) {
      return b;
    } else {
      return gcd(b, a % b);
    }
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
