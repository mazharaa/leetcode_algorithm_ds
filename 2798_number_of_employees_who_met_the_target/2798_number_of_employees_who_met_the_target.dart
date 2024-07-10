void main(List<String> args) {
  print(numberOfEmployeesWhoMetTarget([0, 1, 2, 3, 4], 2));
}

int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
  int ans = 0;

  for (int hour in hours) {
    if (hour >= target) {
      ans++;
    }
  }

  return ans;
}
