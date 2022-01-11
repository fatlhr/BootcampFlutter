import 'bangun_datar.dart';

class Persegi extends Bangun_datar {
  late double sisi;

  Persegi(double sisi) {
    this.sisi = sisi;
  }

  @override
  double luas() {
    return sisi * sisi;
  }

  @override
  double keliling() {
    return 4 * sisi;
  }
}
