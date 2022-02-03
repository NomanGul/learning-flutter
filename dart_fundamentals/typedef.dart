typedef int MeraFun(int a, int b);

void main() {
  // Function sum = (int a, int b) => a + b;
  // print("sum: ${sum(1, 2)}");

  int sum(int a, int b) {
    return a + b;
  }

  MeraFun ss = sum;

  print(ss(1, 2));
}
