package main

func shuffle(nums []int, n int) []int {
	ans := make([]int, 2*n)
	idx := 0

	for i := 0; i < n; i++ {
		ans[idx] = nums[i]
		ans[idx+1] = nums[i+n]
		idx += 2
	}
	return ans
}
