class Titan {
  late int _powerPoint;

  int getPowerPoint() {
    return _powerPoint;
  }

  void setPowerPoint(val) {
    if (val < 5) {
      val = 5;
    }
    _powerPoint = val;
  }
}
