void main(List<String> args) {
  print(getSneakyNumbers([0, 1, 1, 0]));
}

List<int> getSneakyNumbers(List<int> nums) {
  var myMap = Map<int, int>();
  List<int> ans = [];

  for (var i = 0; i < nums.length; i++) {
    if (myMap.containsKey(nums[i])) {
      myMap[nums[i]] = myMap[nums[i]]! + 1;
    } else {
      myMap.putIfAbsent(nums[i], () => 1);
    }

    if (myMap[nums[i]] == 2) {
      ans.add(nums[i]);
    }
  }

  return ans;
}
