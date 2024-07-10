void main(List<String> args) {}

void solution(List<String> keys, List<int> values) {
  for (var key in keys) {
    switch (key) {}
  }
}

class ParkingSystem {
  List<int> empty = [];

  ParkingSystem(int big, int medium, int small) {
    this.empty = [big, medium, small];
  }

  bool addCar(int carType) {
    if (this.empty[carType - 1] > 0) {
      this.empty[carType - 1]--;
      return true;
    }

    return false;
  }
}
