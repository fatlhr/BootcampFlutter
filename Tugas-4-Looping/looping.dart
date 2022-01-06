import 'dart:io';

void main() {
  //one();
  //two();
  //three();
  four();
}

four() {
  for (var j = 0; j <= 7; j++) {
    for (var i = 0; i < j; i++) {
      stdout.write("#");
    }
    print('');
  }
}

three() {
  for (var j = 0; j < 4; j++) {
    for (var i = 0; i < 8; i++) {
      stdout.write("#");
    }
    print('');
  }
}

two() {
  var x = 1;

  for (var i = 0; i <= 20; i++) {
    for (x > 0; (x % 2 == 1 && x <= 20); x++) {
      print("${x} - Santai");
    }
    for (x > 0; (x % 2 == 0 && x <= 20); x++) {
      print("${x} - Berkualitas");
    }
    for (x > 0; (x % 3 == 0 && x <= 20); x++) {
      print("${x} - I love coding");
    }
  }
}

one() {
  var x = 1;
  var y = 20;

  print("LOOPING PERTAMA");
  while (x >= 1 && x <= 20) {
    while (x % 2 == 0) {
      print('$x - I love coding');
      x++;
    }
    x++;
  }
  print("LOOPING KEDUA");
  while (y >= 1 && y <= 20) {
    while (y % 2 == 0) {
      print('$y - I will become a mobile developer');
      y--;
    }
    y--;
  }
}
