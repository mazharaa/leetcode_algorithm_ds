package main

type ListNode struct {
	Val  int
	Next *ListNode
}

func mergeNodes(head *ListNode) *ListNode {
	current := head.Next
	ans := head

	for current != nil {
		if current.Val != 0 {
			head.Val += current.Val
		} else {
			if current.Next != nil {
				head = head.Next
				head.Val = 0
			}
		}
		current = current.Next
	}
	head.Next = nil
	return ans
}
