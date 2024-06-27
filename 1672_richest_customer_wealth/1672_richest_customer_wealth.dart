void main(List<String> args) {
  print(maximumWealth([
    [2, 8, 7],
    [7, 1, 3],
    [1, 9, 5]
  ]));
}

int maximumWealth(List<List<int>> accounts) {
  int max = 0;
  int temp = 0;

  for (List<int> wealth in accounts) {
    temp = 0;
    for (int each in wealth) {
      temp += each;
    }
    if (temp > max) {
      max = temp;
    }
  }

  return max;
}
