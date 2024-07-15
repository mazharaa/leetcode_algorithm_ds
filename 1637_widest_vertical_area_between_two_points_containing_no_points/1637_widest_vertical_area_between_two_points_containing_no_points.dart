void main(List<String> args) {
  print(maxWidthOfVerticalArea([
    [8, 7],
    [9, 9],
    [7, 4],
    [9, 7]
  ]));
}

int maxWidthOfVerticalArea(List<List<int>> points) {
  int ans = 0;

  points.sort((a, b) => a[0].compareTo(b[0]));

  for (int i = 1; i < points.length; i++) {
    if (ans < (points[i][0] - points[i - 1][0])) {
      ans = points[i][0] - points[i - 1][0];
    }
  }

  return ans;
}
