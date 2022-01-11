class Lingkaran {
  late double phi = 3.14, _r;

  void setJari(double val) {
    if (val < 0) {
     val *= -1;
    }
    _r = val;
  }

  double getJari() {
    return _r;
  }

  double luasLingkaran() {
    return phi*_r * _r;
  }
}
