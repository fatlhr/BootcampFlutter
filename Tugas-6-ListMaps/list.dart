main() {
  var input = [
    ["0001", "Roman", "Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika", "Medan", "10/10/1992", "Main Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang", "Martapura", "06/04/1970", "Berkebun"]
  ];
  range(10, 5);
  rangewithStep(10, 0, 2);
  dataHandling(input);
  balikKata("sanbercode");
}

//N0 4
balikKata(String word) {
  print(word.split("").reversed.join());
}

//No 3
dataHandling(input) {
  for (var i = 0; i < input.length; i++) {
    print("ID: " + input[i][0]);
    print("Nama: " + input[i][1]);
    print("Alamat: " + input[i][2]);
    print("Tanggal Lahir: " + input[i][3]);
    print("Hobi: " + input[i][4] + "\n");
  }
}

//No 2
rangewithStep(num startNum, num finishNum, num step) {
  List<num> list = [];
  if (finishNum > startNum) {
    for (var i = startNum; i <= finishNum; i += step) {
      list.add(i);
    }
    print(list);
  } else if (startNum > finishNum) {
    for (var i = startNum; i >= finishNum; i -= step) {
      list.add(i);
    }
    print(list);
  }
}

//No 1
range(num startNum, num finishNum) {
  List<num> list = [];
  if (finishNum > startNum) {
    for (var i = startNum; i <= finishNum; i++) {
      list.add(i);
    }
    print(list);
  } else if (startNum > finishNum) {
    for (var i = startNum; i >= finishNum; i--) {
      list.add(i);
    }
    print(list);
  }
}
