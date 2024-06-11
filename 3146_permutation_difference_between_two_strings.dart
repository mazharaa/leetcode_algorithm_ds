void main(List<String> args) {
  print(findPermutationDifference('abc', 'bac'));
}

int findPermutationDifference(String s, String t) {
  int ans = 0;
  Map<String, int> sIndexMap = {};

  for (int i = 0; i < s.length; i++) {
    sIndexMap[s[i]] = i;
  }

  for (int i = 0; i < t.length; i++) {
    int j = sIndexMap[t[i]]!;
    ans += (i - j).abs();
  }
  return ans;
}
