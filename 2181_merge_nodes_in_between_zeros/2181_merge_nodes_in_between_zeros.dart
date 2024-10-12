void main(List<String> args) {}

ListNode? mergeNodes(ListNode? head) {
  var current = head!.next;
  var ans = head;

  while (current != null) {
    if (current.val != 0) {
      head!.val += current.val;
    } else {
      if (current.next != null) {
        head = head!.next;
        head!.val = 0;
      }
    }
    current = current.next;
  }
  head!.next = null;
  return ans;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
