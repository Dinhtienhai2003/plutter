class MyObject {
  int value;

  MyObject({
    required this.value,
  });
  //Phương thức tăng giá trị
  void increase() {
    value++;
  }

  //Phương thức giảm giá trị
  void decrease() {
    value--;
  }

  //Phương thức trả về giá trị
  int get returnValue => value;

  //Phương thức đặt giá trị
  void reset() {
    value = 0;
  }

  // Phương thức với Lũy thừa mũ 2
  void exponential() {
    value = value * value;
  }

  //Phương thức với lũy thừa mũ n
  int power(int exponent) {
    if (exponent < 0) {
      throw ArgumentError("Exponent must be non-negative");
    }

    int result = 1;

    for (int i = 0; i < exponent; i++) {
      result *= value;
    }

    return result;
  }
}
