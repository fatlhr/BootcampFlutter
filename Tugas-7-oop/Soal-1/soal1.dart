import '../Tugas-Enkapsulasi/lingkaran.dart';

void main(List<String> args) {
  Segitiga segitiga = new Segitiga();
  Lingkaran lingkaran = new Lingkaran();

  segitiga.setengah = 0.5;
  segitiga.alas = 12.0;
  segitiga.tinggi = 8.0;
  print("Luas Segitiga = ${segitiga.luasSegitiga()} m2 \n");

  lingkaran.setJari(-10);
  print("Jari2 = ${lingkaran.getJari()}");
  print("Luas Lingkaran = ${lingkaran.luasLingkaran()} m2");
}

class Segitiga {
  late double setengah, alas, tinggi;

  double luasSegitiga() {
    return setengah * alas * tinggi;
  }
}
