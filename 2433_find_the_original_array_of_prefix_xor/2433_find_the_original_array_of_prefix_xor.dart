void main(List<String> args) {
  print(findArray([5, 2, 0, 3, 1]));
}

List<int> findArray(List<int> pref) {
  List<int> ans = [];

  ans.add(pref[0]);

  for (int i = 1; i < pref.length; i++) {
    ans.add(pref[i - 1] ^ pref[i]);
  }

  return ans;
}
