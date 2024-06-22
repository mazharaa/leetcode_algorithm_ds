void main(List<String> args) {
  print(getConcatenation([1, 2, 1]));
}

List<int> getConcatenation(List<int> nums) {
  List<int> ans = nums + nums;
  return ans;
}
