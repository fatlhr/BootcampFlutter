void main(List<String> args){
  print("life");
  Future.delayed(Duration(seconds: 1)).then((value) => print("never flat"));
  print("is");
}
