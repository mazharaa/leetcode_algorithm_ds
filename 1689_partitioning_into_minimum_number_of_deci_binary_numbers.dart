void main(List<String> args) {
  print(minPartitions('32'));
}

int minPartitions(String n) {
  int max = 0;
  for (int i = 0; i < n.length; i++) {
    if (max < int.parse(n[i])) {
      max = int.parse(n[i]);
    }
  }

  return max;
}
