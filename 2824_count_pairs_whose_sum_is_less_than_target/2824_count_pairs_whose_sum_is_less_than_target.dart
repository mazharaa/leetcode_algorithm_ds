void main(List<String> args) {
  print(countPairs([-1, 1, 2, 3, 1], 2));
}

int countPairs(List<int> nums, int target) {
  nums.sort();
  int ans = 0;
  int i = 0;
  int j = nums.length - 1;

  while (i < j) {
    if (nums[i] + nums[j] < target) {
      ans += j - i;
      i++;
    } else {
      j--;
    }
  }

  return ans;
}
