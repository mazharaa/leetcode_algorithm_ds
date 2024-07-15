void main(List<String> args) {
  print(kidsWithCandies([2, 3, 5, 1, 3], 3));
}

List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  List<bool> ans = [];
  int max = 0;

  for (int candy in candies) {
    if (candy > max) {
      max = candy;
    }
  }

  for (int candy in candies) {
    if ((candy + extraCandies) >= max) {
      ans.add(true);
    } else {
      ans.add(false);
    }
  }

  return ans;
}
