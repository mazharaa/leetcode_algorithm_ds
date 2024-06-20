void main(List<String> args) {
  print(numJewelsInStones('aA', 'aAAbbbb'));
}

int numJewelsInStones(String jewels, String stones) {
  int ans = 0;
  Set<String> jewelsMap = {};

  for (int i = 0; i < jewels.length; i++) {
    jewelsMap.add(jewels[i]);
  }

  for (int i = 0; i < stones.length; i++) {
    if (jewelsMap.contains(stones[i])) {
      ans++;
    }
  }

  return ans;
}
