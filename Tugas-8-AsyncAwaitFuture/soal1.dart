void main(List<String> args) async {
  Human hum = new Human();

  print("luffy");
  print("zoro");
  print("killer");
  await hum.getDataAsync();
  print(hum.name);
}

class Human {
  String name = "nama character one piece";

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'Hilmy';
    print("get data [done]");
  }
}
