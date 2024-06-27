void main(List<String> args) {
  print(minimumOperations([1, 2, 3, 4]));
}

int minimumOperations(List<int> nums) {
  int ans = 0;

  for (int i in nums) {
    if (i % 3 == 0) {
      continue;
    }
    if ((i + 1) % 3 == 0 || (i - 1) % 3 == 0) {
      ans++;
    }
  }

  return ans;
}
