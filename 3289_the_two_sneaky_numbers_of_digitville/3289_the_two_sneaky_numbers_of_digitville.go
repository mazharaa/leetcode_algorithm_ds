package main

func getSneakyNumbers(nums []int) []int {
	myMap := make(map[int]int)
	ans := make([]int, 2)
	j := 0

	for i := 0; i < len(nums); i++ {
		if val, ok := myMap[nums[i]]; ok {
			myMap[nums[i]] = val + 1
		} else {
			myMap[nums[i]] = 1
		}

		if myMap[nums[i]] == 2 {
			ans[j] = nums[i]
			j++
		}
	}

	return ans
}
