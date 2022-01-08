import 'dart:io';

void main() {
  print("1. " + teriak());
  print("2. ${kalikan(2, 3)}");
  stdout.write("3. ");
  introduce("fatih", 21, "Medan", "Coding");
  print("4. ${faktorial(6)}");
}

//no 4
faktorial(int n) {
  int num = 1, faktorial = 1;
  while (num <= n) {
    faktorial = faktorial * num;
    num = num + 1;
  }
  return faktorial;
}

//no 3
introduce(name, age, address, hobby) {
  print("Nama saya " +
      name +
      ", umur saya ${age}  tahun, alamat saya di " +
      address +
      ", dan saya punya hobby yaitu " +
      hobby +
      "!");
}

// no 2
kalikan(int x, int y) => x * y;

// no 1
teriak() {
  return "Halo Sanbers!";
}
