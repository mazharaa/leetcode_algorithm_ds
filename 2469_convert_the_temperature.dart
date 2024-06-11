void main(List<String> args) {
  print(convertTemperature(122.11));
}

List<double> convertTemperature(double celsius) {
  return [celsius + 273.15, (celsius * 1.8) + 32];
}
