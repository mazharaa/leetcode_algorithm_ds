void main(List<String> args) {
  print(finalValueAfterOperations(["--X", "X++", "X++"]));
}

int finalValueAfterOperations(List<String> operations) {
  int ans = 0;
  for (String temp in operations) {
    if (temp.contains('+')) {
      ans++;
    } else if (temp.contains('-')) {
      ans--;
    }
  }
  return ans;
}
