import 'bangun_datar.dart';

class Lingkarann extends Bangun_datar {
  late double r;

  Lingkarann(double jari) {
    this.r = jari;
  }

  @override
  double luas() {
    return 3.14 * r * r;
  }

  @override
  double keliling() {
    return 2 * 3.14 * r;
  }
}
