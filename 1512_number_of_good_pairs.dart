void main(List<String> args) {
  print(numIdenticalPairs([1, 2, 3, 1, 1, 3]));
}

int numIdenticalPairs(List<int> nums) {
  int ans = 0;
  Map<int, int> countMap = {};
  for (int num in nums) {
    int count = countMap.putIfAbsent(num, () => 0);

    ans += count;

    countMap.update(num, (v) => count + 1);
  }
  return ans;
}
