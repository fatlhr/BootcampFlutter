import '../Soal-1/soal1.dart';
import '../Tugas-Enkapsulasi/lingkaran.dart';
import 'bangun_datar.dart';
import 'lingkaran.dart';
import 'persegi.dart';
import 'segitigaa.dart';

void main(List<String> args) {
  Bangun_datar bangunDatar = new Bangun_datar();
  Persegi persegi = new Persegi(9);
  Segitigaa segitigaa = new Segitigaa(6, 4);
  Lingkarann lingkarann = new Lingkarann(10);

  bangunDatar.luas();

  print("Luas Segitiga = ${segitigaa.luas()} m2");
  print("Luas Persegi = ${persegi.luas()} m2");
  print("Luas Lingkaran = ${lingkarann.luas()} m2 \n");
  
  bangunDatar.keliling();
  print("Keliling Segitiga = ${segitigaa.keliling()} m");
  print("Keliling Persegi = ${persegi.keliling()} m");
  print("Keliling Lingkaran = ${lingkarann.keliling()} m");
}
