void main(List<String> args) {
  print(findWordsContaining(["leet", "code"], 'e'));
}

List<int> findWordsContaining(List<String> words, String x) {
  List<int> ans = [];

  for (int i = 0; i < words.length; i++) {
    if (words[i].contains(x)) {
      ans.add(i);
    }
  }

  return ans;
}
