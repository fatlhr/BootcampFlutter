import 'dart:io';

void main() {
  //one();
  //two();
  //three();
  four();
}

four() {
  var hari = 21;
  var bulan = 7;
  var tahun = 1945;

  switch ((hari >= 1 && hari <= 31) &&
      (tahun >= 1900 && tahun <= 2200) &&
      (bulan >= 1 && bulan <= 12)) {
    case true:
      switch (bulan) {
        case 1:
          print(hari.toString() + " Januari " + tahun.toString());
          break;
        case 2:
          print(hari.toString() + " Februari " + tahun.toString());
          break;
        case 3:
          print(hari.toString() + " Maret " + tahun.toString());
          break;
        case 4:
          print(hari.toString() + " April " + tahun.toString());
          break;
        case 5:
          print(hari.toString() + " Mei " + tahun.toString());
          break;
        case 6:
          print(hari.toString() + " Juni " + tahun.toString());
          break;
        case 7:
          print(hari.toString() + " Juli " + tahun.toString());
          break;
        case 8:
          print(hari.toString() + " Agustus " + tahun.toString());
          break;
        case 9:
          print(hari.toString() + " September " + tahun.toString());
          break;
        case 10:
          print(hari.toString() + " Oktober " + tahun.toString());
          break;
        case 11:
          print(hari.toString() + " November " + tahun.toString());
          break;
        case 12:
          print(hari.toString() + " Desember " + tahun.toString());
          break;
        default:
      }
      break;
    default:
      print('Tolong input hari yang benar!');
  }
}

three() {
  stdout.write("Input Hari : ");
  String hari = stdin.readLineSync()!;
  switch (hari) {
    case 'senin':
      print(
          'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      break;
    case 'selasa':
      print(
          "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      break;
    case 'rabu':
      print('Anda Lulus');
      break;
    case 'kamis':
      print(
          'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      break;
    case 'jumat':
      print('Hidup tak selamanya tentang pacar.');
      break;
    case 'sabtu':
      print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      break;
    case 'minggu':
      print(
          'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
    default:
      print('Tolong input hari yang benar!');
  }
}

two() {
  stdout.write("Nama : ");
  String nama = stdin.readLineSync()!;
  stdout.write("Peran (penyihir/guard/werewolf) : ");
  String peran = stdin.readLineSync()!;
  if (nama != null && peran != null) {
    if (peran == "penyihir") {
      print("Selamat datang di Dunia Werewolf, " +
          nama +
          "\nHalo " +
          peran +
          " " +
          nama +
          ", kamu dapat melihat siapa yang menjadi werewolf!");
    }
    if (peran == "guard") {
      print("Selamat datang di Dunia Werewolf, " +
          nama +
          "\nHalo " +
          peran +
          " " +
          nama +
          ", kamu akan membantu melindungi temanmu dari serangan werewolf.");
    }
    if (peran == "werewolf") {
      print("Selamat datang di Dunia Werewolf, " +
          nama +
          "\nHalo " +
          peran +
          " " +
          nama +
          ", Kamu akan memakan mangsa setiap malam");
    }
  }
  if (nama != null && peran == "") {
    print("Halo " + nama + ", Pilih peranmu untuk memulai game!");
  }
  if (nama == "" && peran == "") {
    print("Nama harus diisi!");
  }
}

one() {
  stdout.write("Melanjutkan untuk mengintall aplikasi? (Y/T) ");
  String ternary = stdin.readLineSync()!;
  ternary == "y" || ternary == "t"
      ? ternary == "y"
          ? print('=> Anda akan menginstall aplikasi dart')
          : print('=> aborted')
      : print("please input Y or T");
}
