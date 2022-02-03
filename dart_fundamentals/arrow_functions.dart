void main() {
  Function sum = (int a, int b) => a + b;
  print("sum: ${sum(1, 2)}");

  List<String> kaams = ["uthna", "khana", "sona", "parhna"];

  kaams.forEach((kaam) => print("kar diya: $kaam"));
}
