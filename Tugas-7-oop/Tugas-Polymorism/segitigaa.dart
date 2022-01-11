import 'dart:math';
import 'bangun_datar.dart';

class Segitigaa extends Bangun_datar {
  late double a,t;

  Segitigaa(double a, double t) {
    this.a = a;
    this.t = t;
  }

  @override
  double luas() {
    return (a * t) /2;
  }

  @override
  double keliling() {
    return a + t + sqrt(pow(a, 2) + pow(t, 2));
  }
}
